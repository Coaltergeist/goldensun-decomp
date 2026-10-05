"""Profile/query regressions use an unconfigured source-only fixture."""
import copy
import hashlib
import json
import os
from pathlib import Path
import shutil
import shlex
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import build_config as config
import build_compile
import candidate_build
import permuter_compile
from candidate_cache import CandidateCache


class ProfileTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        for name in ("Makefile", *config.CONFIG_FILES, *config.IMPLEMENTATION):
            target = self.root / name
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(TOOLS.parent / name, target)
        for path in (TOOLS.parent / "overlays").glob("*/overlay.ld"):
            target = self.root / path.relative_to(TOOLS.parent)
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(path, target)
        self.data = config.read_json(self.root / config.CONFIG_FILES[1])
        self.catalog = config.read_json(self.root / config.CONFIG_FILES[0])
        self.env = dict(os.environ, PYTHONDONTWRITEBYTECODE="1")
        for key in list(self.env):
            if key.startswith("GS_BUILD_") or key in {"MAKEFLAGS", "MFLAGS", *[v["name"] for v in self.data["variables"]]}:
                self.env.pop(key)

    def save(self):
        (self.root / config.CONFIG_FILES[0]).write_text(json.dumps(self.catalog))
        (self.root / config.CONFIG_FILES[1]).write_text(json.dumps(self.data))

    def query(self, *args, ok=True, env=None):
        result = subprocess.run([sys.executable, "-B", "tools/build_config.py", *args],
                                cwd=self.root, env=env or self.env, capture_output=True, text=True)
        self.assertEqual(result.returncode == 0, ok, result.stderr)
        return result

    def make(self, source, *overrides, env=None):
        result = subprocess.run(["make", "-s", "--no-print-directory", "print-compile-contract",
                                 "SOURCE=" + source, *overrides], cwd=self.root,
                                env=env or self.env, capture_output=True, text=True, check=True)
        self.assertEqual(result.stderr, "")
        self.assertEqual(len(result.stdout.splitlines()), 6)
        return result.stdout.splitlines()

    def test_source_only_queries_are_read_only_without_rom_compilers_or_outputs(self):
        def inventory():
            return {str(p.relative_to(self.root)): (hashlib.sha256(p.read_bytes()).hexdigest(), p.stat().st_mtime_ns)
                    for p in self.root.rglob("*") if p.is_file()}
        before = inventory()
        for kind, name in [("unit", "src/maps/common/common2.c"), ("unit", "asm/maps/common/common2.o"),
                           ("profile", "tu:src/battle_anim/moves/gaia"), ("commands", "src/lib/m4a/m4a.c"),
                           ("commands", "tools/pack_overlay.c"), ("commands", "src/lib/call_via.s"),
                           ("overlay", "rom_779188"), ("module", "common:common1")]:
            json.loads(self.query("query", kind, name).stdout)
        self.make("src/math/vector.c")
        self.assertEqual(before, inventory())
        self.assertFalse((self.root / ".build").exists())
        self.assertFalse((self.root / "tools/gcc296").exists())
        self.assertFalse((self.root / "baserom.gba").exists())

    def test_profile_exceptions_and_flash_verify_are_preserved(self):
        normal = self.make("src/math/vector.c")
        gaia = self.make("src/battle_anim/moves/gaia.c")
        common = self.make("src/maps/common/common2.c")
        m4a = self.make("src/lib/m4a/m4a.c")
        flash = self.make("src/lib/agb_flash/agb_flash.c")
        verify = self.make("src/lib/agb_flash/agb_flash_verify.c")
        self.assertEqual(normal, verify)
        self.assertIn("-fno-strict-aliasing", normal[2])
        self.assertNotIn("-fno-strict-aliasing", gaia[2])
        self.assertIn("-fstrict-aliasing", gaia[2])
        self.assertNotIn("-mthumb-interwork", common[2])
        self.assertEqual(m4a[0], "agbcc"); self.assertEqual(flash[0], "agbcc")
        self.assertIn("M4A_SIGNED_CHAR", m4a[4]); self.assertNotIn("M4A_SIGNED_CHAR", flash[4])
        self.assertTrue(m4a[5].endswith("-O2")); self.assertTrue(flash[5].endswith("-O"))
        config_data = json.loads(self.query("query", "profile", "src/maps/common/common2.c").stdout)
        self.assertIn("-mthumb-interwork", config_data["assembler_arguments"])

    def test_directory_and_flag_overrides_reach_the_adapter(self):
        row = self.make("src/math/vector.c", "GCC296_DIR=alternate/gcc", "AGBCC_DIR=alternate/agb")
        self.assertEqual(row[1], "alternate/gcc/xgcc")
        self.assertIn("-Balternate/gcc/", row[2])
        self.assertEqual(row[3], "alternate/agb/bin/old_agbcc")
        self.assertIn("-Ialternate/agb/include", row[4])
        flags = "-O1 -mthumb-interwork -fno-strict-aliasing"
        row = self.make("src/battle_anim/moves/gaia.c", "GCC296_CFLAGS=" + flags)
        self.assertEqual(row[2], "-O1 -mthumb-interwork -fstrict-aliasing")
        row = self.make("src/maps/common/common2.c", "GCC296_CFLAGS=" + flags)
        self.assertEqual(row[2], "-O1 -fno-strict-aliasing")
        self.assertEqual(self.make("src/battle_anim/moves/gaia.c", "GAIA_CFLAGS=-O0")[2], "-O0")
        self.assertEqual(self.make("src/lib/m4a/m4a.c", "M4A_CPPFLAGS=-D TEST", "M4A_CC1FLAGS=-O")[4:], ["-D TEST", "-O"])

    def test_environment_defaults_and_host_flags_keep_make_semantics(self):
        env = dict(self.env, GCC296_DIR="alternate/gcc", GCC296_CFLAGS="ignored", CC="custom-cc", CFLAGS="-O0", CPPFLAGS="-DTEST")
        row = self.make("src/math/vector.c", env=env)
        self.assertEqual(row[1], "alternate/gcc/xgcc"); self.assertNotIn("ignored", row[2])
        host = json.loads(self.query("query", "commands", "tools/pack_overlay.c", env=env).stdout)
        self.assertEqual(host["compile"][0], "custom-cc")
        self.assertEqual(host["compile"][1:4], ["-DTEST", "-MMD", "-O0"])
        self.assertEqual(host["link"], ["custom-cc", "-o", "tools/pack_overlay", "tools/pack_overlay.o"])

    def test_exception_follows_stable_identity_after_source_move(self):
        unit = next(u for u in self.catalog["units"] if u["profile"] == "gcc296-gaia")
        unit["source"] = "src/moved/gaia.c"; unit["object"] = "build/moved/gaia.o"; self.save()
        self.assertIn("-fstrict-aliasing", self.make("src/moved/gaia.c")[2])

    def test_lost_required_profile_is_rejected(self):
        next(u for u in self.catalog["units"] if u["profile"] == "gcc296-gaia")["profile"] = "gcc296"
        self.save(); self.assertIn("required ABI", self.query("query", "unit", "src/math/vector.c", ok=False).stderr)

    def test_reference_and_unknown_sources_cannot_be_compiled(self):
        for name in ("src/lib/m4a/m4a_tables.c", "src/new.c", "src/non_matching/maps/title.c"):
            self.assertIn("unknown", self.query("query", "unit", name, ok=False).stderr)

    def test_nonlocal_output_and_duplicate_bindings_are_rejected(self):
        self.catalog["units"][0]["object"] = "../outside.o"; self.save()
        with self.assertRaises(ValueError): config.load(self.root)
        self.catalog["units"][0]["object"] = self.catalog["units"][1]["object"]; self.save()
        with self.assertRaisesRegex(ValueError, "duplicate"): config.load(self.root)

    def test_duplicate_json_keys_and_shell_fragments_are_rejected(self):
        path = self.root / config.CONFIG_FILES[1]
        path.write_text('{"schema": 1, "schema": 2}')
        with self.assertRaisesRegex(ValueError, "duplicate"): config.load(self.root)
        self.data["variables"][0]["arguments"] = ["$(touch sentinel)"]; self.save()
        with self.assertRaisesRegex(ValueError, "argument arrays"): config.load(self.root)
        self.assertFalse((self.root / "sentinel").exists())

    def test_profile_postprocessing_participates_in_candidate_cache_key(self):
        self.root.joinpath("build/non_matching/run").mkdir(parents=True)
        cache = CandidateCache(self.root, self.root / "build/non_matching/run")
        source = "src/math/vector.c"
        settings = config.legacy_contract(self.root, source)
        before = cache.assembly_key(source, "int f(void) {return 1;}", Path("tmp.c"), settings, ["f"], {})
        self.data["profiles"]["gcc296"]["postprocess"]["fill"] = 1; self.save()
        after = cache.assembly_key(source, "int f(void) {return 1;}", Path("tmp.c"), settings, ["f"], {})
        self.assertNotEqual(before, after)

    def test_profile_stamp_changes_only_effective_group_and_actual_tool(self):
        fake = self.root / "compiler"; fake.write_text("compiler version one")
        def stamp(identity):
            with patch.object(config, "tool_files", return_value={"compiler": fake}):
                build_compile.profile_stamp(self.root, identity)
            return (self.root / ".build" / (identity + ".stamp")).stat().st_mtime_ns
        before = {n: stamp(n) for n in ["gcc296", "gcc296-gaia", "gcc296-common2"]}
        self.assertEqual(before, {n: stamp(n) for n in before})
        row = next(v for v in self.data["variables"] if v["name"] == "GAIA_CFLAGS")
        row["append"].append("-DGAIA_TEST"); self.save()
        self.assertEqual(before["gcc296"], stamp("gcc296"))
        self.assertEqual(before["gcc296-common2"], stamp("gcc296-common2"))
        self.assertNotEqual(before["gcc296-gaia"], stamp("gcc296-gaia"))
        fake.write_text("compiler version two")
        self.assertNotEqual(before["gcc296"], stamp("gcc296"))

    def test_failed_compile_removes_stale_output(self):
        output = self.root / "stale.o"; output.write_bytes(b"old object")
        with patch.object(build_compile, "run", side_effect=subprocess.CalledProcessError(1, ["cc"])), \
             self.assertRaises(subprocess.CalledProcessError):
            build_compile.compile_source(self.root, dict(family="host", compiler=["cc"], arguments=[]),
                                         self.root / "input.c", output)
        self.assertFalse(output.exists())


    def test_generated_permuter_settings_keep_selected_defines_and_assembler(self):
        values = config.resolve_values(self.data)
        with patch.object(config, "make_values", return_value=values):
            text = permuter_compile.settings_text(self.root, "src/lib/m4a/m4a.c")
        rows = {k: json.loads(v) for k, v in (line.split(" = ", 1) for line in text.splitlines())}
        args = shlex.split(rows["compiler_command"])
        self.assertIn("M4A_SIGNED_CHAR", args)
        self.assertIn("--contract", args)
        self.assertIn("tu:src/lib/m4a/m4a", args)
        self.assertIn("-mthumb-interwork", shlex.split(rows["assembler_command"]))

    def test_permuter_rejects_stale_profile_and_production_output(self):
        values = config.resolve_values(self.data)
        profile = config.settings(self.root, "src/math/vector.c", values)
        args = ["--unit", profile["unit"]["id"], "--contract", "outdated", *profile["preprocessor_arguments"],
                str(self.root / "input.c"), "-o", str(self.root / "output.o")]
        with patch.object(config, "make_values", return_value=values), \
             patch.object(permuter_compile, "compile_tu") as compiler:
            with self.assertRaisesRegex(ValueError, "regenerate"):
                permuter_compile.compile_import(self.root, args)
            args[3] = permuter_compile.profile_digest(profile)
            args[-1] = str(self.root / profile["unit"]["object"])
            with self.assertRaisesRegex(ValueError, "scratch"):
                permuter_compile.compile_import(self.root, args)
            compiler.assert_not_called()


if __name__ == "__main__":
    unittest.main()

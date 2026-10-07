"""Publish the complete generated USA string set, or remove failed outputs."""
from pathlib import Path
import subprocess
import build_paths as paths
from build_clean import checked

ROOT = Path(__file__).resolve().parents[1]

def run(argv):
    subprocess.run(argv, check=True)

def strings(root):
    temporary = paths.STRINGS + ".tmp"
    output_names = [paths.STRINGS + "/" + n for n in paths.STRING_FILES]
    temp_names = [temporary + "/" + n for n in paths.STRING_FILES]
    all_files = [checked(root, n) for n in [paths.STRING_STAMP, *output_names, *temp_names]]
    marker = all_files[0]
    marker.parent.mkdir(parents=True, exist_ok=True)
    checked(root, temporary).mkdir(parents=True, exist_ok=True)
    marker.unlink(missing_ok=True)
    try:
        run([paths.HOST + "/pack_strings", "-i", paths.STRINGS_TEXT, "-o", temporary])
        actual = {f.name for f in (root / temporary).iterdir()}
        if actual != set(paths.STRING_FILES):
            raise ValueError("string generator output set differs from the USA layout")
        assembly = root / temporary / "strings.s"
        assembly.write_text(assembly.read_text().replace(temporary + "/", paths.STRINGS + "/"))
        for name in paths.STRING_FILES:
            (root / temporary / name).replace(root / paths.STRINGS / name)
        marker.write_text("complete\n")
    except BaseException:
        for name in output_names:
            checked(root, name).unlink(missing_ok=True)
        raise
    finally:
        for name in temp_names:
            checked(root, name).unlink(missing_ok=True)
        try:
            (root / temporary).rmdir()
        except OSError:
            pass


if __name__ == "__main__":
    strings(ROOT)

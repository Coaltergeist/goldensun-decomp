import hashlib
import os
from pathlib import Path
import re


def object_map(path):
    """Unwrap GNU ld section rows for asm-differ's single-line map parser."""
    source = Path(path)
    if not source.is_file():
        return str(source)
    text = source.read_text()
    text = re.sub(r"(?m)^( \.[^\s]+)[ \t]*\n[ \t]+(0x[0-9a-fA-F]+[ \t]+0x[0-9a-fA-F]+[ \t]+[^\n]+)$",
                  r"\1 \2", text)
    dest = Path('.diff-baselines/maps') / (hashlib.sha256(str(source).encode()).hexdigest() + '.map')
    dest.parent.mkdir(parents=True, exist_ok=True)
    if not dest.exists() or dest.read_text() != text:
        dest.write_text(text)
    return str(dest)


def apply(config, args):
    config['baseimg'] = 'baserom.gba'
    config['myimg'] = 'goldensun.gba'
    # The final map merges ROM inputs into stage1.o and loses source ownership.
    default_map = 'stage1.map' if getattr(args, 'diff_obj', False) else 'goldensun.map'
    mapfile = os.environ.get('GOLDENSUN_DIFF_MAP', default_map)
    config['mapfile'] = object_map(mapfile) if getattr(args, 'diff_obj', False) else mapfile
    config['source_directories'] = ['.']
    config['makeflags'] = ['-j1']
    config['arch'] = 'armel'
    config['objdump_executable'] = 'arm-none-eabi-objdump'
    config['objdump_flags'] = ['-m', 'arm']
    config['expected_dir'] = os.environ.get('GOLDENSUN_EXPECTED_DIR', 'expected/')
    # Object-file mode (-o): asm-differ rebuilds the current .o via this command
    # and diffs it against the corresponding object under expected_dir.
    config['make_command'] = ['make', '-j1']
    config['map_format'] = 'gnu'

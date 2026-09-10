"""Small lexical C definition reader; preprocessor directives are not functions.

Does not evaluate macros or conditional compilation. Use expanded C when needed.
"""
import re

def _blank_noncode(text):
    """Replace comment/string/char *contents* with spaces (preserving newlines
    and length) so braces/semicolons inside them can't corrupt the brace scan."""
    out = list(text)
    i, n = 0, len(text)
    while i < n:
        two = text[i:i + 2]
        if two == '//':
            while i < n and text[i] != '\n':
                out[i] = ' '
                i += 1
        elif two == '/*':
            out[i] = out[i + 1] = ' '
            i += 2
            while i < n and text[i:i + 2] != '*/':
                if text[i] != '\n':
                    out[i] = ' '
                i += 1
            if i < n:
                out[i] = out[i + 1] = ' '
                i += 2
        elif text[i] in '"\'':
            q = text[i]
            out[i] = ' '
            i += 1
            while i < n and text[i] != q:
                if text[i] == '\\' and i + 1 < n:
                    out[i] = out[i + 1] = ' '
                    i += 2
                    continue
                if text[i] != '\n':
                    out[i] = ' '
                i += 1
            if i < n:
                out[i] = ' '
                i += 1
        else:
            i += 1
    return ''.join(out)


def parse_funcs(text):
    """Return definitions, excluding preprocessor macros and preceding declarations.

    This is a lexical C reader, not a preprocessor. Callers needing macro/header
    coverage must pass expanded source as well (see fakematch_inventory.py).
    """
    scan = _blank_noncode(text)
    lines = []
    continued = False
    for line in scan.splitlines(keepends=True):
        directive = continued or line.lstrip().startswith('#')
        continued = directive and line.rstrip('\n').endswith('\\')
        lines.append(''.join('\n' if c == '\n' else ' ' for c in line) if directive else line)
    scan = ''.join(lines)
    funcs = {}
    i, seg = 0, 0
    while i < len(scan):
        if scan[i] == '{':
            header = scan[seg:i]
            # Find a declarator at parenthesis depth zero, skipping GNU attributes.
            depth, name = 0, None
            for token in re.finditer(r"[A-Za-z_]\w*|[()]", header):
                value = token[0]
                if value == '(':
                    depth += 1
                elif value == ')':
                    depth -= 1
                elif depth == 0 and re.match(r"\s*\(", header[token.end():]):
                    if value not in ('__attribute__', '__attribute'):
                        name = value
                        break
            d, j = 1, i + 1
            while j < len(scan) and d:
                d += (scan[j] == '{') - (scan[j] == '}')
                j += 1
            if d:
                raise ValueError('unbalanced C braces')
            if name:
                start = seg + len(header) - len(header.lstrip())
                if name in funcs:
                    raise ValueError('duplicate function definition: ' + name)
                funcs[name] = text[start:j]
            i = seg = j
            continue
        if scan[i] == ';':
            seg = i + 1
        i += 1
    return funcs


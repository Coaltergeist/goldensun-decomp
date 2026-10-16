# Attribution and component notices

The [README credits](README.md#credits) list contributors and upstream work.
Preserve these credits and file-level notices when modifying or moving source.

Compiler sources and their notices are maintained separately in
[camelot-gcc](https://github.com/Coaltergeist/camelot-gcc) and
[pret/agbcc](https://github.com/pret/agbcc). Installed compiler binaries are not
part of this source repository. The optional
[asm-differ](https://github.com/simonlindholm/asm-differ) installation retains its
upstream notices.

The m4a audio engine C in `src/lib/m4a/` is a Golden Sun port of
[SAT-R/sa2's m4a reconstruction](https://github.com/SAT-R/sa2), compiled with
`old_agbcc`. `m4a0.s` there is an upstream SA2 comparison reference, excluded
from the Golden Sun build. Preserve this provenance when modifying library code.

This attribution index does not replace component notices or introduce a
project-wide license.

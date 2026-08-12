#ifndef GUARD_NONMATCHING_H
#define GUARD_NONMATCHING_H

/* Embed a not-yet-matched function as raw assembly inside a consolidated
 * translation unit. The referenced .s fully defines the function
 * (it re-includes macros.inc/gba.inc, which are include-guarded, then
 * .thumb_func_start .. .func_end); it is spliced into the gcc-generated .s
 * at this source position and assembled with the rest of the TU, so the
 * object holds matched C and unmatched asm functions interleaved in address
 * order. Replace an INCLUDE_ASM line with the C body once the function is
 * matched -- no linker or file-move churn.
 *
 * Convention: the .s files for src/<path>.c live under asm/<path>/<Func>.s,
 * one per function (asm/ mirrors src/). Paths are resolved by
 * arm-none-eabi-as relative to the repo root (the make CWD), matching the
 * .incbin convention used by the overlay data fragments.
 *
 * The trailing `.text` makes the macro SECTION-NEUTRAL: a fragment that ends
 * in .data/.bss (an overlay-owned data blob) would otherwise leave the
 * assembler in that section, so the C function following the include would be
 * emitted there instead of .text. Resetting to .text keeps the merged TU's
 * function stream contiguous. Byte-neutral -- a .text directive emits nothing.
 */
#define INCLUDE_ASM(path) __asm__(".include \"" path "\"\n\t.text\n")

/* Interleaved-TU section control. When a foreign object splits this TU's .text
 * run in the ROM (e.g. src/flags.o sits between two chunks of rpg/pc), the
 * seg-2 functions/fragments must land in a DISTINCT named text section so the
 * linker can place the foreign object between the two. SECTION() switches the
 * assembler once at the seg boundary; because gcc emits no `.text` directive
 * before a function it already believes is in text, every following C function
 * lands in that section too. INCLUDE_ASM_SECTION resets to the same section
 * (not .text) after an embedded fragment so the stream stays in seg-2.
 * Both are byte-neutral -- a `.section` directive emits no bytes.
 */
#define SECTION(sec) __asm__(".section " sec ",\"ax\",%progbits\n")
#define INCLUDE_ASM_SECTION(path, sec) \
    __asm__(".include \"" path "\"\n\t.section " sec ",\"ax\",%progbits\n")

#endif /* GUARD_NONMATCHING_H */

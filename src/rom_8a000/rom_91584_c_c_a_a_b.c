/* Cluster Func_8091d94..Func_8091d94 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_a_a.o and asm/rom_8a000/rom_91584_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
/* Func_8091d94 = LearnInnateMove @ 0x08091D94
 *
 * Sieve decompilation with the single FP#9 fix applied: the 0x1e message ID is
 * the absolute symbol MSG_LEARN_INNATE_MOVE (message.h / message.sym), following
 * the file_table.h convention. The ((int)&_MSG_*) macro forces gcc-2.96 to
 * materialize it from the literal pool, matching the ROM `ldr r0, =...` (where
 * stock gcc would emit an inline `mov`). See FP9_PLAN.md / COMPILER_NOTES.md
 * (FP#9). Original model output (literal 0x1e) preserved in the sibling .response.
 */
#include "message.h"

extern void _Func_8078e28(void);
extern void _Func_80f9080(unsigned int);
extern void _Func_8019908(unsigned int, unsigned int);
extern void _Func_801776c(unsigned int, unsigned int);

void Func_8091d94(unsigned int pc, unsigned int move) {
    unsigned int r5;
    unsigned int r6;

    r6 = move;
    r5 = pc;
    _Func_8078e28();
    _Func_80f9080(0x53);
    _Func_8019908(r5, 1);
    _Func_8019908(r6, 4);
    _Func_801776c(MSG_LEARN_INNATE_MOVE, 3);
}

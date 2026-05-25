/* Trivial function cluster between Func_8002ee4 and Func_8002f10 in rom_2e00.s.
 *
 * Five no-op stubs (presumably callbacks or vtable slots intentionally left
 * empty) and a constant-zero return helper. agbcc -O2 emits each void leaf
 * as a bare `bx lr` (2 bytes) with 2 bytes of inter-function alignment
 * padding; the zero-returner is `mov r0, #0; bx lr` (4 bytes). Total .text
 * for this TU is exactly 24 bytes = 0x2f10 - 0x2ef8, preserving the original
 * ROM layout when slotted between rom_2e00_a.o and rom_2e00_c.o in stage1.ld.
 */

void Func_8002ef8(void) {}
void Func_8002efc(void) {}
void Func_8002f00(void) {}
void Func_8002f04(void) {}
void Func_8002f08(void) {}
int Func_8002f0c(void) { return 0; }

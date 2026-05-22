/* BIOS syscall wrappers — three trampolines that issue ARM SWIs.
 *
 * SWI 0x0B = CpuSet (memory copy via CPU; arg layout in r0/r1/r2 set by caller).
 * SWI 0x19 = LZ77UnCompVram. The two flavors below preset r0 to 0 / 1 before
 * the SWI; the meaning is parameter-specific and tied to how callers use it.
 *
 * Pattern: inline `asm("swi 0xN")` inside a void leaf. agbcc -O2 lowers
 * this to a single `swi 0xN; bx lr` byte sequence matching the ROM.
 */

void Func_6864(void) {
    asm("swi 0xb");
}

void Func_6868(void) {
    asm("mov r0, #0\n\tswi 0x19");
}

void Func_6870(void) {
    asm("mov r0, #1\n\tswi 0x19");
}

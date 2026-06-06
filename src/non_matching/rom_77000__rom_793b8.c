/* Func_80793b8 / Func_80793c8 — get/set a flag byte by 9-bit bitfield index.
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * index = (id << 20) >> 23  (bits 3..11 of id), into the byte array
 * ewram_2000040. b8 reads, c8 writes.
 *
 * non_matching: the LOGIC is exact, but the bytes differ only in instruction
 * SCHEDULING — gcc-2.96 here materializes the array base (ldr =ewram_2000040)
 * FIRST and shifts the index in place on r0, whereas the ROM computes the
 * index using r3 as scratch (lsl r3,r0,#20; lsr r0,r3,#23) and loads the base
 * LAST. No C structuring tried (index temp, base pointer, declared before/after)
 * moves the pool load past the shifts. A clean decomp-permuter seed. */
extern unsigned char ewram_2000040[];

unsigned char Func_80793b8(unsigned int id) {
    return ewram_2000040[(id << 20) >> 23];
}

void Func_80793c8(unsigned int id, unsigned char val) {
    ewram_2000040[(id << 20) >> 23] = val;
}

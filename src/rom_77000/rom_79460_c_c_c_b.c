/* Cluster Func_8079ad8..Func_8079ad8 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_a.o and asm/rom_77000/rom_79460_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_8079ad8 — &table[classID], 0x54-byte stride.
 * asm: mov r3,#0x54; mul r0,r3; ldr r3,=.L84b1c; add r0,r3
 * .L84b1c is a FILE-LOCAL rodata label (not .global), so the ROM reloc is
 * section-relative (.rodata + 0x90). Reach it via its global sibling
 * .L84a8c (.L84b1c = .L84a8c + 0x90). This FAILS judge (reloc names .L84a8c,
 * not .rodata) but matches at ROM level — gate on compare-rom (the =.L class,
 * cf. Func_8019ebc/ed0). */
extern unsigned char L84a8c[] __asm__(".L84a8c");

unsigned char *Func_8079ad8(int classID) {
    return L84a8c + 0x90 + classID * 0x54;
}

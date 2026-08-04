/* Cluster LoadUIHandCursorGFX..LoadUIHandCursorGFX extracted from goldensun/asm/rom_a1000/rom_a172c_a_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a172c_a_c_a.o and asm/rom_a1000/rom_a172c_a_c_c.o in
 * goldensun/stage1.ld.
 */
// fakematch
extern int AllocSpriteSlot(void);
extern int UploadSpriteGFX(unsigned int a, unsigned int b, unsigned char *c);
extern int _Func_801eadc(unsigned int a, unsigned int b, unsigned int c, unsigned int d, unsigned int e);
extern unsigned char Laea4c[] __asm__(".Laea4c");

unsigned int LoadUIHandCursorGFX(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    int slot;
    register unsigned int ret __asm__("r6");

    slot = AllocSpriteSlot();
    __asm__ volatile ("movs %0, #0" : "=r" (ret) : "r" (slot));
    if (slot != 0) {
        UploadSpriteGFX(slot, 0x80, Laea4c);
        ret = _Func_801eadc(slot, 0x80 << 23, arg0, arg1, arg2);
    }
    return ret;
}

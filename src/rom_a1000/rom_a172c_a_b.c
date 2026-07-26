/* Cluster Func_80a172c..Func_80a172c extracted from goldensun/asm/rom_a1000/rom_a172c_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a172c_a_a.o and asm/rom_a1000/rom_a172c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char Laea4c[] __asm__(".Laea4c");
extern void *AllocSpriteSlot(void);
extern void UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);
extern unsigned int _Func_801eadc(void *slot, unsigned int mode, unsigned int arg0, unsigned int arg2, unsigned int arg3);

unsigned int Func_80a172c(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int result;
    void *slot;

    result = 0;
    slot = AllocSpriteSlot();
    if (slot != 0) {
        UploadSpriteGFX((int)slot, 0x80, Laea4c);
        result = _Func_801eadc(slot, 0x40000000, arg0, arg2, arg3);
    }
    return result;
}

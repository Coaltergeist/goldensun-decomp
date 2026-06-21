/* Cluster Func_80228bc..Func_80228bc extracted from goldensun/asm/rom_15000/rom_21dfc.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_21dfc_a.o and asm/rom_15000/rom_21dfc_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int FormatDecimalString(unsigned int arg0);
extern unsigned char gStringBuffer;

unsigned int Func_80228bc(unsigned short *arg0, unsigned int arg1) {
    unsigned char *p;
    unsigned int r;
    int i;

    r = FormatDecimalString(arg1);
    p = &gStringBuffer;
    for (i = 0xd; i >= 0; i--) {
        *arg0 = *p;
        p++;
        arg0++;
    }
    return r;
}

/* Cluster OvlFunc_943_200b4bc..OvlFunc_943_200b4bc extracted from goldensun/asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c.s.
 *
 * Total .text for this TU = 156 bytes (= 0x9c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a.o and asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_c.o in
 * goldensun/overlays/rom_7c7b9c/overlay.ld.
 */
extern void OvlFunc_943_200b558(int, int);
extern void OvlFunc_943_200b5ec(int, int, int);
extern unsigned char L5b30[] __asm__(".L5b30");

void OvlFunc_943_200b4bc(void)
{
    unsigned short *r5;
    unsigned short r3;
    unsigned short r2;

    OvlFunc_943_200b558(8, 0);
    r5 = (unsigned short *)L5b30;
    r3 = 0;
    *r5 = r3;
    OvlFunc_943_200b558(9, 1);
    r3 = r5[1];
    r3 += 0x80;
    r5[1] = r3;
    OvlFunc_943_200b558(0xa, 2);
    r3 = r5[2];
    r2 = 0x80;
    r2 <<= 1;
    r3 += r2;
    r5[2] = r3;
    OvlFunc_943_200b558(0xb, 3);
    r3 = r5[3];
    r2 = 0x80;
    r2 <<= 2;
    r3 += r2;
    r5[3] = r3;
    OvlFunc_943_200b5ec(0xc, 0, 0);
    OvlFunc_943_200b5ec(0xd, 1, 0);
    OvlFunc_943_200b5ec(0xe, 2, 0);
    OvlFunc_943_200b5ec(0xf, 3, 0);
    OvlFunc_943_200b5ec(0x10, 4, 1);
    OvlFunc_943_200b5ec(0x11, 5, 1);
    OvlFunc_943_200b5ec(0x12, 6, 1);
    OvlFunc_943_200b5ec(0x13, 7, 1);
}

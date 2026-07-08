/* Cluster OvlFunc_924_200b660..OvlFunc_924_200b660 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_35b8_a_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a.o and asm/overlays/rom_7ac2d8/ovl_35b8_a_a_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern void OvlFunc_924_200cf90(int, int);

void OvlFunc_924_200b660(void)
{
    unsigned long long tull;
    unsigned long v1;
    unsigned short t2;
    int i;

    __CutsceneStart();
    __PlaySound(0x53);

    tull = 0xb8;
    do { tull = (unsigned long) tull; } while (0);
    v1 = tull;
    __Func_808f1c0((int) v1, 3);

    OvlFunc_924_200cf90(0xb9, 0xb8);
    i = __CheckPartyItem(0xb8);
    __Func_8019908(i, 1);

    t2 = 0xb8;
    do { t2 = (unsigned short) t2; } while (0);
    __Func_8019908(t2, 2);

    __Func_801776c(0x1638, 1);
    __SetFlag(0x200);
    __CutsceneEnd();
}

/* Cluster OvlFunc_971_2009158..OvlFunc_971_2009158 extracted from goldensun/asm/overlays/rom_7fb4a8/ovl_30_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fb4a8/ovl_30_c_a_a.o and asm/overlays/rom_7fb4a8/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_7fb4a8/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

unsigned int OvlFunc_971_2009158(unsigned int arg0)
{
    unsigned int r6;
    unsigned int r5;
    unsigned int r2;
    unsigned int r3;

    r6 = arg0;
    __CutsceneStart();
    r5 = (unsigned int)&gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 = r5 + r2;
    __Func_809280c(r6, *(unsigned int *)r3, 0);
    r3 = 0xaa;
    r3 <<= 2;
    r2 = r5 + r3;
    if (*(unsigned short *)r2 != 0) {
        __Func_8019908(*(unsigned short *)r2, 5);
        __MessageID(0x298a);
    } else {
        __MessageID(0x298b);
    }
    __Func_8092c40(r6, 0);
    return __CutsceneEnd();
}

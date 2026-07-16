// fakematch
/* Cluster OvlFunc_951_2008104..OvlFunc_951_2008104 extracted from goldensun/asm/overlays/rom_7d6418/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d6418/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7d6418/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7d6418/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern void OvlFunc_951_2008880(void);
extern void OvlFunc_951_2008ac8(void);

void OvlFunc_951_2008104(void)
{
    unsigned char *base;
    unsigned long v;
    unsigned int x;

    base = (unsigned char *)&gState;
    v = *(unsigned long *)(base + (0xfa * 2));
    if (__GetFlag(0x200) == 0) {
        x = 0x80;
        __asm__ ("" : "+r" (x));
        x <<= 2;
        __SetFlag(x);
        OvlFunc_951_2008880();
    }
    __CutsceneStart();
    __Func_80921c4(v, 0x78, 0x98);
    __Func_8092adc(v, 0x4000, 0);
    OvlFunc_951_2008ac8();
    __CutsceneEnd();
}

// fakematch
/* Cluster OvlFunc_907_2008d10..OvlFunc_907_2008d10 extracted from goldensun/asm/overlays/rom_79b154/ovl_30_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79b154/ovl_30_c_a_c_a.o and asm/overlays/rom_79b154/ovl_30_c_a_c_c.o in
 * goldensun/overlays/rom_79b154/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char *iwram_3001ebc;
extern GlobalState gState;
extern void OvlFunc_907_2008fa0(void);

void OvlFunc_907_2008d10(void)
{
    unsigned char *actor;
    unsigned int off;
    unsigned int field;
    unsigned int bound;
    unsigned int y;

    *(int *)((unsigned char *)iwram_3001ebc + 0x1c0) = 0x204;
    OvlFunc_907_2008fa0();

    off = 0xe1;
    off <<= 1;
    field = *(unsigned short *)((char *)&gState + off);
    bound = 0x80;
    field -= 3;
    field <<= 16;
    bound <<= 9;

    if (field <= bound) {
        if (__GetFlag(0x109) == 0) {
            actor = (unsigned char *)__MapActor_GetActor(0);
            __CutsceneStart();
            y = 0x80;
            y <<= 13;
            {
                register int rq __asm__("r0") = *(int *)(actor + 8);
                __asm__ volatile ("" : : "r" (rq));
                *(int *)(actor + 0xc) = y;
                __Func_80933f8(rq, y, *(int *)(actor + 0x10), 0);
            }
            __Func_800fe9c();
            __CutsceneEnd();
            __WaitFrames(1);
        }
    }
}

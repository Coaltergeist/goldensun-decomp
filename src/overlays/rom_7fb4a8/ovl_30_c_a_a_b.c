// fakematch
/* Cluster OvlFunc_971_20090e8..OvlFunc_971_20090e8 extracted from goldensun/asm/overlays/rom_7fb4a8/ovl_30_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fb4a8/ovl_30_c_a_a_a.o and asm/overlays/rom_7fb4a8/ovl_30_c_a_a_c.o in
 * goldensun/overlays/rom_7fb4a8/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

unsigned int OvlFunc_971_20090e8(unsigned int actor)
{
    unsigned int msgId;
    unsigned int flag1, flag2, flag3;
    unsigned int idx;
    unsigned char *p;

    __CutsceneStart();
    {
        register unsigned char *basep __asm__("r3") = (unsigned char *)&gState;
        __asm__ volatile ("" : "+r" (basep));
        idx = 0xfa;
        __asm__ ("" : "+r" (idx));
        p = basep + (idx << 1);
    }
    {
        register unsigned int r0v __asm__("r0") = actor;
        __asm__ volatile ("" : "+r" (r0v));
        __Func_809280c(r0v, *(unsigned int *)p, 0);
    }
    flag1 = 0x204;
    __asm__ ("" : "+r" (flag1));
    if (__GetFlag(flag1) == 0) {
        if (__GetPartySize() <= 3) {
            msgId = 0x298d;
            __asm__ ("" : "+r" (msgId));
        } else {
            msgId = 0x298c;
            __asm__ ("" : "+r" (msgId));
        }
        flag2 = 0x204;
        __asm__ ("" : "+r" (flag2));
        __SetFlag(flag2);
    } else {
        msgId = 0x298e;
        flag3 = 0x204;
        __asm__ ("" : "+r" (flag3));
        __ClearFlag(flag3);
    }
    __MessageID(msgId);
    __Func_8092c40(actor, 0);
    return __CutsceneEnd();
}

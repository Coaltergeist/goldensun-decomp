typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor_id, int arg1);
extern void __Func_8092c40(int actor_id, int arg1);
extern int __Func_8091c7c(int value, int arg1);
extern void __MapTransitionOut(void);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void OvlFunc_common1_78(int actor_id);

void OvlFunc_956_2008ba4(int actor_id)
{
    register u8 *g asm("r2");
    register u32 off asm("r1");
    register u32 *p asm("r3");
    register s16 *sp asm("r3");
    int result;
    register int t asm("r3");
    register int msgoff asm("r0");
    register int base asm("r5");
    register int aid asm("r6");
    register int msg asm("r7");
    register u8 *iwram asm("r10");
    register u32 value asm("r8");

    iwram = iwram_3001ebc;
    g = gState;
    off = 0xfa;
    off <<= 1;
    p = (u32 *)(g + off);
    asm volatile("" : "+r"(p));
    value = *p;
    off -= 0x32;
    sp = (s16 *)(g + off);
    asm volatile("" : "+r"(sp));
    aid = actor_id;
    if (*sp == 2) {
        __CutsceneStart();
        asm volatile("" : "+r"(aid));
        t = aid << 1;
        msg = 0x2073;
        base = t + aid;
        asm volatile("" : "+r"(base), "+r"(msg));
        __MessageID(base + msg);
        asm volatile(
            "movs r1, #0\n\t"
            "add r0, r6, #0\n\t"
            "bl __Func_8092c40"
            :
            : "r"(aid)
            : "r0", "r1", "r2", "r3", "r12", "lr", "cc", "memory");
        result = __Func_8091c7c(value, 0);
        if (result == 0) {
            msgoff = msg + 1;
            __MessageID(base + msgoff);
            __ActorMessage(aid, 0);
            *(u32 *)(iwram + 0x1c0) = 0x200;
            *(u32 *)(iwram + 0x1c8) = 0xf;
            __MapTransitionOut();
            __WaitMapTransition();
            OvlFunc_common1_78(aid);
            __MapTransitionIn();
            __WaitMapTransition();
        } else {
            msgoff = msg + 2;
            __MessageID(base + msgoff);
            __ActorMessage(aid, 0);
        }
        __CutsceneEnd();
    }
}

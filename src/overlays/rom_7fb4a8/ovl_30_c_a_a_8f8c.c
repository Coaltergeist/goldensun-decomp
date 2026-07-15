typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

struct State {
    u8 pad[500];
    u32 actor;
};

extern u8 gState[];
extern int OvlFunc_971_2008f30(int wanted);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_809280c(int actor, u32 arg1, int arg2);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);

int OvlFunc_971_2008f8c(int actor)
{
    register int a asm("r6");
    register int zero asm("r0");
    register int msgBase asm("r5");
    register int hasA asm("r8");
    int hasB;

    asm volatile(
        "mov r6, r0\n\t"
        "mov r0, #0"
        : "=r"(a), "=r"(zero)
        : "1"(actor));
    msgBase = 0x294e;
    asm volatile("" : "+r"(msgBase));
    hasA = OvlFunc_971_2008f30(zero);
    hasB = OvlFunc_971_2008f30(a);

    __CutsceneStart();
    __Func_809280c(a, ((struct State *)gState)->actor, 0);
    if (__GetFlag(0x304) != 0) {
        asm volatile(
            "mov r0, #0xbc\n\t"
            "lsl r0, #2\n\t"
            "bl __GetFlag\n\t"
            "mov r3, #0xbc\n\t"
            "lsl r3, #2\n\t"
            "add r0, r6, r3\n\t"
            "bl __GetFlag\n\t"
            "mov r5, r0"
            : "=r"(msgBase)
            : "r"(a)
            : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
        if (__GetFlag(0x305) != 0) {
            if (msgBase != 0) {
                msgBase = 0x2967;
            } else {
                msgBase = 0x296c;
            }
        } else {
            if (msgBase != 0) {
                msgBase = 0x2971;
            } else {
                msgBase = 0x2976;
            }
        }
    } else {
        register int t asm("r2");
        asm volatile("mov r2, r8" : "=r"(t) : "r"(hasA));
        if (t != 0) {
            if (hasB == 0) {
                msgBase = 0x2953;
            }
        } else {
            msgBase = 0x2958;
        }
    }
    __MessageID(msgBase + a - 1);
    __ActorMessage(a, 0);
    __CutsceneEnd();
    return;
}

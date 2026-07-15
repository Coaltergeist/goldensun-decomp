typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;

extern u8 *iwram_3001ebc;
extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __MessageID(int);
extern int __GetFlag(int);
extern void __MapActor_SetAnim(int, int);
extern void OvlFunc_898_200973c(int, int, int);
extern void OvlFunc_898_2009724(int, int);
extern void __WaitFrames(int);
extern void __CutsceneEnd(void);

void OvlFunc_898_2008a4c(void)
{
    register u8 *actor asm("r6") = __MapActor_GetActor(0xe);
    register u16 *flags asm("r5") = (u16 *)(actor + 0x64);
    register int oldFlags asm("r2") = *flags;
    register s16 saved asm("r7");
    asm volatile("mov r3, #6\n\tldrsh r7, [r6, r3]" : "=r"(saved) : "r"(actor) : "r3");
    {
        register int mask asm("r3");
        asm volatile("ldr r3, =2" : "=r"(mask));
        mask |= oldFlags;
        *flags = mask;
    }
    __CutsceneStart();
    {
        register int message asm("r0");
        asm volatile("ldr r0, =0x1339" : "=r"(message));
        __MessageID(message);
    }
    {
        int flag = __GetFlag(2);
        asm volatile("cmp r0, #0\n\tbeq .LafterFlag898\n\tldr r3, =iwram_3001ebc\n\tldr r2, [r3]\n\tmov r3, #0xec\n\tlsl r3, #1\n\tadd r2, r3\n\tldrh r3, [r2]\n\tadd r3, #1\n\tstrh r3, [r2]\n\tb .LafterFlag898\n\t.align 2, 0\n\t.ltorg\n.LafterFlag898:"
                     : : "r"(flag) : "r2", "r3", "memory");
    }
    __MapActor_SetAnim(0xe, 0);
    OvlFunc_898_200973c(0xe, 0, 2);
    OvlFunc_898_2009724(0xe, 10);
    *(s16 *)(actor + 6) = saved;
    __WaitFrames(1);
    __CutsceneEnd();
    *flags &= 1;
}

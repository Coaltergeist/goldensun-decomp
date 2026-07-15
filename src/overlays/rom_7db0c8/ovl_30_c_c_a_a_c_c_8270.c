typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __SetFlag(s32 flag);
extern u8 *__MapActor_GetActor(s32 actor_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern void __Func_80933d4(s32, s32);
extern void __Func_80933f8(s32, s32, s32, s32);
extern void __Actor_SetAnim(u8 *actor, s32 anim);
extern void __Func_8093530(void);
extern void __Actor_TravelTo(u8 *actor, s32 x, s32 y, s32 z);
extern void __Actor_WaitMovement(u8 *actor);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);

void OvlFunc_954_2008270(void)
{
    register u8 *actor asm("r5");
    register u32 mid asm("r6");
    register u32 speed asm("r8");

    __SetFlag(0x301);
    actor = __MapActor_GetActor(0xd);
    __CutsceneStart();
    __Func_80933d4(0x20000, 0x4000);
    __Func_80933f8(0x2580000, -1, 0xc80000, 1);
    __Actor_SetAnim(actor, 3);
    __Func_8093530();
    {
        register s32 zeroLow asm("r2") = 0;
        register s32 zero asm("r10");
        register u8 *actorTmp asm("r3");

        asm volatile("" : "+r"(zeroLow));
        zero = zeroLow;
        asm volatile("" : "+r"(zero) : "r"(zeroLow));
        actorTmp = actor;
        asm volatile("" : "+r"(actorTmp) : "r"(zero));
        {
            register s32 zeroReload asm("r2");
            zeroReload = zero;
            actorTmp[0x55] = zeroReload;
        }
        asm volatile(
            "ldr r6, =0xcccc\n\t"
            "ldr r3, =0x6666\n\t"
            "mov r2, #0x80\n\t"
            "ldr r1, [r5, #8]\n\t"
            "mov r8, r3\n\t"
            "str r3, [r5, #0x34]\n\t"
            "str r6, [r5, #0x30]\n\t"
            "ldr r3, [r5, #0x10]\n\t"
            "mov r0, r5\n\t"
            "lsl r2, r2, #12\n\t"
            "bl __Actor_TravelTo"
            : "=r"(mid), "=r"(speed)
            : "r"(actor)
            : "r0", "r1", "r2", "r3", "lr", "memory");

        actor = __MapActor_GetActor(0xe);
        {
            register u8 *actorTmp2 asm("r3");
            register s32 zeroReload2 asm("r2");

            actorTmp2 = actor;
            asm volatile("" : "+r"(actorTmp2) : "r"(zero));
            zeroReload2 = zero;
            actorTmp2[0x55] = zeroReload2;
        }
        *(u32 *)(actor + 0x34) = speed;
        *(u32 *)(actor + 0x30) = mid;
        __Actor_TravelTo(actor, *(s32 *)(actor + 8), 0x200000, *(s32 *)(actor + 0x10));
    }
    __Actor_WaitMovement(actor);
    __CutsceneWait(0x2d);
    {
        register s32 destX asm("r3") = 0x29;
        register s32 destZ asm("r2") = 0xc;

        asm volatile("" : "+r"(destX), "+r"(destZ));
        __Func_8010704(0x2b, 0xc, 1, 1, destX, destZ);
    }
    __CutsceneEnd();
}

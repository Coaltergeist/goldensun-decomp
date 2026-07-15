typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];

extern void __MapActor_SetAnim(s32 actorNo, s32 animationNo);
extern u8 *__MapActor_GetActor(s32 actorNo);
extern void __Actor_TravelTo(u8 *actor, s32 x, s32 y, s32 z);
extern void __MapActor_WaitMovement(s32 actorNo);
extern void __Func_8010704(s32 sourceX, s32 sourceZ, s32 width, s32 height,
                            s32 destinationX, s32 destinationZ);
extern void __WaitFrames(s32 frames);
extern void __ClearFlag(s32 flag);

struct State {
    u8 pad[500];
    u32 actor;
};

void OvlFunc_956_2008404(void)
{
    u8 *actor;

    __MapActor_SetAnim(((struct State *)gState)->actor, 1);

    actor = __MapActor_GetActor(0xb);
    {
        register s32 zeroLow __asm__("r2") = 0;
        register u8 *actorTmp __asm__("r3");
        register s32 zero __asm__("r8");

        __asm__ volatile ("" : "+r"(zeroLow));
        actorTmp = actor;
        __asm__ volatile ("" : "+r"(actorTmp) : "r"(zeroLow));
        zero = zeroLow;
        __asm__ volatile ("" : "+r"(zero) : "r"(actorTmp));
        {
            register s32 zeroReload __asm__("r2");

            zeroReload = zero;
            actorTmp[0x55] = zeroReload;
        }
        *(s32 *)(actor + 0x34) = 0x6666;
        *(s32 *)(actor + 0x30) = 0xcccc;
        __Actor_TravelTo(actor, *(s32 *)(actor + 8), 0x80 << 11,
                         *(s32 *)(actor + 0x10));

        actor = __MapActor_GetActor(0xa);
        {
            register u8 *actorTmp2 __asm__("r3");
            register s32 zeroReload2 __asm__("r2");

            actorTmp2 = actor;
            __asm__ volatile ("" : "+r"(actorTmp2) : "r"(zero));
            zeroReload2 = zero;
            actorTmp2[0x55] = zeroReload2;
        }
        *(s32 *)(actor + 0x34) = 0x6666;
        *(s32 *)(actor + 0x30) = 0xcccc;
        __Actor_TravelTo(actor, *(s32 *)(actor + 8), 0x80 << 14,
                         *(s32 *)(actor + 0x10));
    }

    __MapActor_WaitMovement(0xa);
    {
        register s32 destinationX __asm__("r3") = 9;
        register s32 destinationZ __asm__("r2") = 0xc;

        __asm__ volatile ("" : "+r"(destinationX), "+r"(destinationZ));
        __Func_8010704(0, 0x19, 1, 1, destinationX, destinationZ);
    }
    __WaitFrames(2);
    __ClearFlag(0x367);
}

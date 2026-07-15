typedef unsigned char u8;
typedef signed int s32;

extern u8 *__MapActor_GetActor(s32 actorId);
extern void __Actor_TravelTo(u8 *actor, s32 x, s32 speed, s32 y);
extern void __MapActor_WaitMovement(s32 actorId);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);

void OvlFunc_947_200a1ac(void)
{
    register u8 *actor14 asm("r6") = __MapActor_GetActor(0xe);
    register s32 scale asm("r5") = 0x10000;
    u8 *actor13;
    u8 *sprite;

    actor13 = __MapActor_GetActor(0xd);
    *(s32 *)(actor13 + 0x18) = scale;
    actor13 = __MapActor_GetActor(0xd);
    *(s32 *)(actor13 + 0x1c) = scale;
    actor13 = __MapActor_GetActor(0xd);
    sprite = *(u8 **)(actor13 + 0x50);
    {
        register s32 mask asm("r2") = -0xd;
        register s32 bit asm("r4") = 8;
        sprite[9] = (sprite[9] & mask) | bit;
        {
            register u8 *sprite14 asm("r1") = *(u8 **)(actor14 + 0x50);
            sprite14[9] = (sprite14[9] & mask) | bit;
        }
    }
    *(s32 *)(actor14 + 0x34) = 0x6666;
    {
        register u8 *travelActor asm("r0");
        register s32 x asm("r1");
        register s32 speed asm("r2") = 0x80;
        register s32 y asm("r3");
        x = *(s32 *)(actor14 + 8);
        *(s32 *)(actor14 + 0x30) = 0xcccc;
        travelActor = actor14;
        y = *(s32 *)(actor14 + 0x10);
        speed <<= 14;
        __Actor_TravelTo(travelActor, x, speed, y);
    }
    __MapActor_WaitMovement(0xe);
    {
        register s32 fifth asm("r3") = 0x16;
        register s32 sixth asm("r2") = 0x10;
        asm volatile("" : "+r" (fifth), "+r" (sixth));
        __Func_8010704(0x14, 0xe, 1, 1, fifth, sixth);
    }
}

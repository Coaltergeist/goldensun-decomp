typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;

extern s32 Func_8000948(u32 value);
extern s32 __divsi3(s32 numerator, s32 denominator);
extern void Actor_TravelTo(u8 *actor, s32 x, s32 z, s32 y);
extern void Actor_SetAnim(u8 *actor, s32 animation);

s32 ActorCmd_FollowTargetWait(u8 *argument)
{
    register u8 *actor asm("r6") = argument;
    register s32 dx asm("r8");
    register s32 dy asm("r10");
    register s32 distance asm("r7");
    u8 *target = *(u8 **)(actor + 0x68);
    register s32 deltaX asm("r1");
    register s32 deltaY asm("r2");
    register s32 actorPosition asm("r3");

    *(s32 *)(actor + 0x30) = *(s32 *)(target + 0x30);
    *(s32 *)(actor + 0x34) = *(s32 *)(target + 0x34);
    actorPosition = *(s32 *)(actor + 8);
    deltaX = *(s32 *)(target + 8);
    deltaY = *(s32 *)(target + 0x10);
    asm volatile("" : "+r" (actorPosition), "+r" (deltaX), "+r" (deltaY));
    deltaX -= actorPosition;
    actorPosition = *(s32 *)(actor + 0x10);
    deltaY -= actorPosition;
    dy = deltaY;
    asm volatile("" : "+r" (dy));
    {
        register s32 xPixels asm("r3") = deltaX >> 16;
        register s32 yPixels asm("r2") = deltaY >> 16;
        register u32 value asm("r0");
        asm volatile("" : "+r" (xPixels), "+r" (yPixels));
        value = xPixels;
        value *= xPixels;
        xPixels = yPixels;
        xPixels *= yPixels;
        value += xPixels;
        {
            register s32 (*squareRoot)(u32) asm("r3") = Func_8000948;
            dx = deltaX;
            distance = squareRoot(value);
        }
    }
    if (distance > 0x10) {
        register s32 remaining asm("r5") = distance - 0x10;
        s32 xStep = __divsi3(dx * remaining, distance);
        s32 yStep = __divsi3(dy * remaining, distance);
        Actor_TravelTo(actor, *(s32 *)(actor + 8) + xStep,
                       *(s32 *)(actor + 0xc),
                       *(s32 *)(actor + 0x10) + yStep);
        Actor_SetAnim(actor, 2);
        (*(u16 *)(actor + 4))++;
        return 1;
    }
    Actor_SetAnim(actor, 1);
    return 0;
}

typedef unsigned char u8;

extern u8 gState[];
extern u8 *GetFieldActor(int actorId);
extern u8 *_Sprite_AddLayer(u8 *sprite, int layer);
extern void _Actor_SetAnim(u8 *actor, int animation);
extern void Actor_SetAnim_NoArgs(void) asm("_Actor_SetAnim");
extern void WaitFrames(int frames);
extern void _DeleteSpriteLayer(void *layer);
extern void _Actor_TravelTo(u8 *actor, int x, int y, int z);
extern void _Actor_WaitMovement(u8 *actor);

void Player_ExitStairs(int animation)
{
    register int animationReg asm("r6");
    register u8 *statePtr asm("r3");
    register unsigned stateOffset asm("r1");
    register u8 *sprite asm("r8");
    register int offset asm("r9");
    register int zero asm("r10");
    register unsigned mask asm("r2");
    register u8 *flag26 asm("r7");
    register u8 *actor asm("r5");
    u8 *layer;

    statePtr = gState;
    asm volatile("" : "+r"(statePtr));
    stateOffset = 0xfa;
    stateOffset <<= 1;
    asm volatile("" : "+r"(stateOffset));
    statePtr += stateOffset;
    asm volatile("" : "+r"(statePtr));
    animationReg = animation;
    actor = GetFieldActor(*(int *)statePtr);
    {
        register u8 *spriteTemp asm("r2") = *(u8 **)(actor + 0x50);
        asm volatile("" : "+r"(spriteTemp));
        sprite = spriteTemp;
    }
    layer = _Sprite_AddLayer(sprite, 0x1b);
    {
        register int zeroTemp asm("r3") = 0;
        asm volatile("" : "+r"(zeroTemp));
        zero = zeroTemp;
    }
    flag26 = sprite + 0x26;
    {
        register int zeroArg asm("r1") = zero;
        asm volatile("" : "+r"(zeroArg));
        *flag26 = zeroArg;
    }
    {
        register int layerValue asm("r3") = 0xf;
        asm volatile("" : "+r"(layerValue));
        mask = 0xfff00000;
        asm volatile("" : "+r"(mask) : "r"(layerValue));
        layer[5] = layerValue;
    }
    {
        register int offsetTemp asm("r1") = 0x80;
        register int value asm("r3");
        asm volatile("" : "+r"(offsetTemp));
        value = *(int *)(actor + 8);
        offsetTemp <<= 12;
        value &= mask;
        asm volatile("" : "+r"(value));
        offset = offsetTemp;
        value += offset;
        *(int *)(actor + 8) = value;
        value = *(int *)(actor + 0x10);
        value &= mask;
        {
            register int animArg asm("r1");
            register u8 *actorArg asm("r0");
            asm volatile("" : "+r"(value));
            animArg = animationReg;
            asm volatile("" : "+r"(animArg) : "r"(value));
            *(int *)(actor + 0x10) = value;
            actorArg = actor;
            asm volatile("" : "+r"(actorArg), "+r"(animArg));
            Actor_SetAnim_NoArgs();
        }
    }
    WaitFrames(30);
    sprite[0x27] = 1;
    {
        register u8 *spriteTemp asm("r2") = sprite;
        register void *layerTemp asm("r0") = *(void **)(spriteTemp + 0x2c);
        asm volatile("" : "+r"(layerTemp) : "r"(spriteTemp));
        _DeleteSpriteLayer(layerTemp);
    }
    {
        register int zeroTemp asm("r3") = zero;
        register u8 *spriteTemp asm("r1") = sprite;
        asm volatile("" : "+r"(zeroTemp), "+r"(spriteTemp));
        *(int *)(spriteTemp + 0x2c) = zeroTemp;
    }
    *flag26 = 1;
    *(int *)(actor + 0x34) = 0x10000;
    *(int *)(actor + 0x30) = 0x10000;
    _Actor_TravelTo(actor, *(int *)(actor + 8), *(int *)(actor + 0xc),
                    *(int *)(actor + 0x10) + offset);
    _Actor_WaitMovement(actor);
}

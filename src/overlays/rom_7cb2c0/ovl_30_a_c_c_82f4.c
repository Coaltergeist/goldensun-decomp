typedef unsigned char u8;

extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Func_80929d8(void *actor, int value);

int OvlFunc_945_20082f4(u8 *actorArg)
{
    register u8 *actor asm("r6") = actorArg;
    register u8 *target asm("r2") = actor + 0x59;
    register int value asm("r3") = 8;
    register u8 *sprite asm("r5") = *(u8 **)(actor + 0x50);
    register int zero asm("r1") = 0;

    asm volatile("" : "+r"(target), "+r"(value), "+r"(sprite), "+r"(zero));
    *target = value;
    __Actor_SetSpriteFlags(actor, zero);
    {
        register int mask asm("r2") = 13;
        register int bits asm("r1") = sprite[9];
        register int result asm("r3");
        register u8 *actorFlags asm("r1");

        asm volatile("" : "+r"(mask), "+r"(bits));
        mask = -mask;
        result = mask;
        asm volatile("" : "+r"(result));
        result &= bits;
        bits = 4;
        result |= bits;
        sprite[9] = result;
        result = sprite[0x15];
        mask &= result;
        mask |= bits;
        actorFlags = actor + 0x23;
        asm volatile("" : "+r"(actorFlags), "+r"(mask), "+r"(bits));
        sprite[0x15] = mask;
        *actorFlags = (*actorFlags & 0xfe) | 2;
    }
    __Func_80929d8(actor, 15);
    return 1;
}

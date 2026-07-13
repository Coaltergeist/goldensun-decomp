typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int id);

void OvlFunc_949_20086e8(u8 *actor)
{
    u8 *sprite;

    if (actor != 0) {
        register u8 *source asm("r3") = *(u8 **)(__MapActor_GetActor(0) + 0x50);
        register u8 *flag asm("r1") = actor;
        register unsigned int sourceBits asm("r2") = source[9];
        register int zero asm("r3");
        register unsigned int mask asm("r1");
        register int clearMask asm("r2");

        asm volatile("" : "+r"(source), "+r"(flag), "+r"(sourceBits));
        flag += 0x23;
        zero = 0;
        asm volatile("" : "+r"(zero), "+r"(flag));
        *flag = zero;
        mask = 0xc;
        sprite = *(u8 **)(actor + 0x50);
        asm volatile("" : "+r"(mask), "+r"(sprite));
        mask &= sourceBits;
        clearMask = 0xd;
        asm volatile("" : "+r"(clearMask));
        {
            register unsigned int old asm("r0") = sprite[9];
            register unsigned int result asm("r3");

            asm volatile("" : "+r"(clearMask), "+r"(old));
            clearMask = -clearMask;
            result = clearMask;
            asm volatile("" : "+r"(result));
            result &= old;
            result |= mask;
            sprite[9] = result;
        }
        {
            register u8 *again asm("r0") = *(u8 **)(actor + 0x50);
            register unsigned int old asm("r3") = again[0x15];

            asm volatile("" : "+r"(again), "+r"(old));
            clearMask &= old;
            clearMask |= mask;
            again[0x15] = clearMask;
        }
    }
}

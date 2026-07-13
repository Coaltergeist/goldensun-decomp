typedef unsigned char u8;
typedef signed short s16;

extern void *iwram_3001f30;
extern u8 gState[];
extern void Func_8097608(void);

void Func_8096ab0(void)
{
    u8 *actor = *(u8 **)&iwram_3001f30;
    register int type_offset asm("r1") = 0x1e;

    asm("" : "+r"(type_offset));
    if (*(s16 *)(actor + type_offset) == 2) {
        Func_8097608();
        {
            register unsigned int offset asm("r2") = 0x24a;
            register u8 *state asm("r3") = gState;
            register int zero asm("r1") = 0;

            asm("" : "+r"(offset), "+r"(state));
            state += offset;
            asm("" : "+r"(state), "+r"(zero));
            if (*(s16 *)(state + zero) != *(s16 *)(actor + 0x1a))
                (*(u8 **)(actor + 0x14))[0x5b] = 0;
        }
    }
}

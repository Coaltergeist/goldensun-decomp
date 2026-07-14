typedef unsigned char u8;
typedef unsigned int u32;

extern u32 *iwram_3001ebc;
extern int __GetFlag(int flag);
extern void __MapActor_SetPos(int actor, int x, int z);
extern void __MapActor_SetAnim(int actor, int animation);
extern u8 *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8010704(int, int, int, int, int, int);

int OvlFunc_904_2008054(void)
{
    register int zero asm("r5");
    u32 *map = iwram_3001ebc;

    map[0x70] = 0x204;
    map[0x72] = 0x18;

    if (__GetFlag(0x300)) {
        register int x asm("r1") = 0xd8;

        asm volatile ("" : "+r"(x));
        {
            register int z asm("r2") = 0x88;

            z <<= 16;
            asm volatile ("" : "+r"(z));
            {
                register int actor asm("r0") = 8;

                asm volatile ("" : "+r"(actor));
                x <<= 16;
                __MapActor_SetPos(actor, x, z);
            }
        }

        __MapActor_SetAnim(8, 2);
        __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
        __MapActor_GetActor(8)[0x23] = 2;
        {
            register u8 *last asm("r0") = __MapActor_GetActor(8);

            zero = 0;
            last += 0x59;
            {
                register int stack5 asm("r3") = 0xb;
                register int stack6 asm("r2") = 6;

                asm volatile ("" : "+r"(stack5), "+r"(stack6));
                *last = zero;
                __Func_8010704(0xb, 0x24, 5, 5, stack5, stack6);
            }
        }
    }

    return 0;
}

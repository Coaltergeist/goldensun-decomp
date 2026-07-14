typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __Func_8010704(int type, int variant, int arg2, int arg3,
                          int x, int z);

void OvlFunc_907_2008fa0(void)
{
    u8 *actor = __MapActor_GetActor(8);

    if (actor != 0) {
        {
            register int coordinate asm("r2");

            asm volatile(
                "ldr r3, [%1, #0x10]\n\t"
                "asr %0, r3, #20"
                : "=r"(coordinate)
                : "r"(actor)
                : "r3");

            if (coordinate == 6)
                __Func_8010704(2, 0, 1, 1, 0xe, coordinate);
            else {
                register int fifth asm("r3") = 0xe;
                asm volatile("" : "+r"(fifth));
                coordinate = 6;
                __Func_8010704(0, 0, 1, 1, fifth, coordinate);
            }
        }

        {
            int coordinate = *(int *)(actor + 0x10) >> 20;
            if (coordinate == 9)
                __Func_8010704(2, 0, 1, 1, 0xe, coordinate);
            else {
                register int ninth asm("r2");
                register int fifth asm("r3");
                asm volatile(
                    "mov r3, #0xe\n\t"
                    "mov r2, #9"
                    : "=r"(fifth), "=r"(ninth));
                __Func_8010704(1, 0, 1, 1, fifth, ninth);
            }
        }
    }
}

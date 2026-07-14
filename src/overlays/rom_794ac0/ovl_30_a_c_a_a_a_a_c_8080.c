extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8093c00(void);
extern void __Func_8010704(int x, int y, int width, int height,
                           int source_x, int source_y);

void OvlFunc_899_2008080(void)
{
    if (*(unsigned short *)(__MapActor_GetActor(0) + 6) >= 0xa000 &&
        *(unsigned short *)(__MapActor_GetActor(0) + 6) <= 0xe000) {
        __Func_8093c00();
        {
            register int source_x asm("r3") = 0x2a;
            register int source_y asm("r2") = 0x55;

            asm volatile ("" : "+r"(source_x), "+r"(source_y));
            __Func_8010704(0x29, 0x55, 1, 1, source_x, source_y);
        }
    } else if (*(unsigned short *)(__MapActor_GetActor(0) + 6) >= 0x2000 &&
               *(unsigned short *)(__MapActor_GetActor(0) + 6) <= 0x6000) {
        __Func_8093c00();
        {
            register int source_x asm("r3") = 0x2a;
            register int source_y asm("r2") = 0x55;

            asm volatile ("" : "+r"(source_x), "+r"(source_y));
            __Func_8010704(0x2b, 0x55, 1, 1, source_x, source_y);
        }
    }
}

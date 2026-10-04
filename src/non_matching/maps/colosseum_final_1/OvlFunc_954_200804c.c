extern unsigned char L441c[] __asm__(".Lm954_441c");
extern void __Func_8010788(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __MapActor_SetAnim(int, int);

void OvlFunc_954_200804c(void)
{
    switch (*(int *)L441c) {
    case 6:
    case 0x42:
        __Func_8010788(0x5c, 0x1f, 2, 2, 0x32, 0x26);
        __Func_8010788(0x5c, 0x1f, 2, 2, 0x36, 0x26);
        __MapActor_SetAnim(0x10, 0xa);
        break;
    case 0x3c:
        __Func_8010788(0x5c, 0x21, 2, 2, 0x32, 0x26);
        __Func_8010788(0x5c, 0x21, 2, 2, 0x36, 0x26);
        __Func_8010704(0x32, 0x19, 6, 1, 0x32, 0xc);
        __MapActor_SetAnim(0x10, 0xb);
        break;
    case 0:
        __Func_8010788(0x5c, 0x1d, 2, 2, 0x32, 0x26);
        __Func_8010788(0x5c, 0x1d, 2, 2, 0x36, 0x26);
        __MapActor_SetAnim(0x10, 0xc);
        __Func_8010704(0x32, 0x18, 6, 1, 0x32, 0xc);
        *(int *)L441c = 0x78;
        break;
    }

    (*(int *)L441c)--;
}

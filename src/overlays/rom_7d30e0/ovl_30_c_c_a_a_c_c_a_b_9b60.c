extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8093fa0(void);
extern void __Func_8093e28(void);
extern void OvlFunc_948_20099e8(void);
extern void OvlFunc_948_20080c4(void);
extern void OvlFunc_948_2009ac8(void);

void OvlFunc_948_2009b60(void)
{
    unsigned char *a0;
    unsigned char *a8;
    int x0, x8;

    a0 = __MapActor_GetActor(0);
    a8 = __MapActor_GetActor(8);
    x0 = *(int *)(a0 + 8) / 0x100000;
    x8 = *(int *)(a8 + 8) / 0x100000;
    if (x0 == 0x26 && x8 != 0x26) {
        unsigned int state = *(unsigned short *)(a0 + 6);
        unsigned int c1 = 0xc0;
        c1 <<= 8;
        if (state == c1) {
            __Func_8093fa0();
            return;
        }
        {
            unsigned int c2 = 0x80;
            c2 <<= 7;
            if (state == c2) {
                __Func_8093e28();
                return;
            }
        }
    }
    OvlFunc_948_20099e8();
    OvlFunc_948_20080c4();
    OvlFunc_948_2009ac8();
}

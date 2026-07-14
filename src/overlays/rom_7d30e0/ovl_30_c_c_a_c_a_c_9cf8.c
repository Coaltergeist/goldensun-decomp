typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void OvlFunc_948_2009ca0(void);
extern void OvlFunc_948_2009ccc(void);
extern void OvlFunc_948_2009c6c(void);

void OvlFunc_948_2009cf8(void)
{
    u8 *actor;
    int y;
    int x;
    int z;
    int flag;

    actor = __MapActor_GetActor(10);
    y = *(int *)(actor + 12) / 0x100000;
    x = *(int *)(actor + 8) / 0x100000;
    z = *(int *)(actor + 16) / 0x100000;
    flag = __GetFlag(0x300);

    if (!flag && y < 3) {
        OvlFunc_948_2009ca0();
        {
            register int set_flag asm("r0");
            asm volatile("mov %0, #192\n\tlsl %0, %0, #2" : "=r"(set_flag));
            __SetFlag(set_flag);
        }
    }

    if (z == 0x37) {
        if (x == 0x2a)
            OvlFunc_948_2009ccc();
        if (x == 0x26)
            OvlFunc_948_2009ca0();
    } else {
        OvlFunc_948_2009c6c();
    }
}

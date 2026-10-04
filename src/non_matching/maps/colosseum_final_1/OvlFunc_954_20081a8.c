extern void __Func_8010704(int, int, int, int, int, int);
extern void *ColosseumFinal1_GetActor(int) __asm__("__MapActor_GetActor");
extern int __Func_8011f54(int, int, int);
extern void __SetFlagByte(int, int);

void OvlFunc_954_20081a8(void)
{
    unsigned char *actor;
    int res;

    __Func_8010704(0x1b, 0xd, 3, 1, 0x17, 0xc);
    actor = (unsigned char *)ColosseumFinal1_GetActor(9);
    res = __Func_8011f54(0, *(int *)(actor + 8), *(int *)(actor + 0x10));
    if (*(int *)(actor + 0xc) == 0 && res == 0) {
        actor[0x23] = 2;
        actor[0x55] = 0;
        __Func_8010704(0xe, 0xd, 1, 1, *(int *)(actor + 8) >> 20, *(int *)(actor + 0x10) >> 20);
    }
    actor = (unsigned char *)ColosseumFinal1_GetActor(0xa);
    __SetFlagByte(0xc4 << 2, *(int *)(actor + 8) >> 20);
    __Func_8010704(0xe, 0xd, 1, 1, *(int *)(actor + 8) >> 20, *(int *)(actor + 0x10) >> 20);
}

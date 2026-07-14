extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __StartTask(void (*task)(void), int priority);
extern void __SetFlag(int flag);
extern void __Func_8092b08(int actor, int arg1);
extern void OvlFunc_928_2008324(void);

void OvlFunc_928_2008968(void)
{
    unsigned char *p1;
    unsigned char *p2;
    unsigned char *p3;
    unsigned char *p4;
    int y;
    int z;

    __CutsceneStart();
    p1 = __MapActor_GetActor(0x14);
    p1[0x23] &= 0xfd;
    p2 = __MapActor_GetActor(0x14);
    y = 0;
    p2[0x55] = y;
    p3 = __MapActor_GetActor(0x14);
    y = *(int *)(p3 + 8);
    p4 = __MapActor_GetActor(0x14);
    z = *(int *)(p4 + 0x10) >> 20;
    y >>= 20;
    __Func_8010704(3, 0x11, 1, 1, y, z);
    __StartTask(OvlFunc_928_2008324, 0xc8 << 4);
    __SetFlag(0x201);
    __Func_8092b08(0x14, 2);
    __CutsceneEnd();
}

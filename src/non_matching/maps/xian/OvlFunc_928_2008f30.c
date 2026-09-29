extern void __MapActor_SetBehavior(int, void *);

extern void __StopTask(void *);

extern void __MapActor_WaitScript(int);

extern void __MapActor_SetPos(int, int, int);

extern void __MapActor_Face(int, int, int);

extern void __Func_80925cc(int, int);

extern void __ActorMessage(int, int);

extern void __SetFlag(int);

extern void __CutsceneWait(int);

extern void __MapActor_PlayPendingSound(void);

void OvlFunc_928_2008f30(void)
{
    int x, y, z;
    unsigned short *p;

    __CutsceneStart();
    __MapActor_SetBehavior(0x13, gScript_928__020096a0);
    __StartTask(OvlFunc_928_2008358, 0xc8 << 4);
    __MapActor_WaitScript(0x13);
    __PlaySound(0x7c);

    x = 0xa8 << 16;
    y = 0x80 << 12;
    z = 0x9c << 17;

    OvlFunc_common0_10c(x, y, z, 0, 0, 0, 0x20001, 0);
    OvlFunc_common0_10c(x, y, z, 0x3333, 0, 0, 0x20001, 0);
    OvlFunc_common0_10c(x, y, z, 0xffffcccd, 0, 0, 0x20001, 0);

    __StopTask(OvlFunc_928_2008358);
    p = *(unsigned short **)((unsigned char *)__MapActor_GetActor(0x13) + 0x50);
    {
        unsigned int v = 0x80 << 8;
        *(unsigned short *)((char *)p + 0x1e) = (unsigned short)v;
    }
    __MapActor_SetPos(0x15, x, z);
    __CutsceneWait(0x14);
    __MapActor_Face(0xe, 0x13, 0);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0xa);
    __MessageID(0x17fd);
    if (__GetFlag(0x203)) {
        unsigned short *cnt = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        (*cnt)++;
    }
    __ActorMessage(0xe, 0);
    __SetFlag(0x203);
    __MapActor_PlayPendingSound();
    __CutsceneEnd();
}

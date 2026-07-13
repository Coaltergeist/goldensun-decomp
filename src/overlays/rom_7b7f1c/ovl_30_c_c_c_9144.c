extern void __CutsceneStart(void);
extern void __Func_8010704(int, int, int, int, int, int);
extern unsigned char *__MapActor_GetActor(int);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_930_2009144(void)
{
    unsigned char *actor;
    register int fifth asm("r3");
    register int sixth asm("r2");

    __CutsceneStart();
    fifth = 0x15;
    sixth = 0xb;
    asm("" : "+r" (fifth), "+r" (sixth));
    __Func_8010704(0xe, 6, 1, 2, fifth, sixth);
    actor = __MapActor_GetActor(0xf);
    actor[0x59] = 0xfe;
    __SetFlag(0x201);
    __CutsceneEnd();
}

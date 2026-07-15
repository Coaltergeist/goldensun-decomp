typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __Func_801776c(int message, int mode);
extern void __PlaySound(int sound);
extern void __Func_8010788(int a, int b, int c, int d, int e, int f);
extern void __CutsceneWait(int frames);
extern void OvlFunc_965_200a4d0(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int value);
extern void __CutsceneEnd(void);

void OvlFunc_965_200a5c8(void)
{
    u8 *state = iwram_3001ebc;
    register int fifth asm("r5");
    register int sixth asm("r6");

    __CutsceneStart();
    if (*(s16 *)(state + 0xcb8) == 0)
        goto no_event;
    if (!__GetFlag(0x985)) {
        __Func_801776c(0x1528, 1);
        __PlaySound(0x9b);
        fifth = 0x11;
        sixth = 0x4e;
        __Func_8010788(0x23, 0x4e, 1, 2, fifth, sixth);
        __CutsceneWait(10);
        __Func_8010788(0x22, 0x4e, 1, 2, fifth, sixth);
        __CutsceneWait(10);
        OvlFunc_965_200a4d0();
    }
    goto done;

no_event:
    __MessageID(0x2756);
    __ActorMessage(-1, 0);
done:
    __CutsceneEnd();
}

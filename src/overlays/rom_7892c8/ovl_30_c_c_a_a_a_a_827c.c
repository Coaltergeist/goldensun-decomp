typedef signed short s16;

extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern unsigned char gState[];
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __Func_8092848(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int mode);
extern void __CutsceneEnd(void);

void OvlFunc_888_200827c(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855)) {
        __MessageID(0x1377);
    } else {
        __MessageID(0x1289);
    }
    {
        register unsigned int value asm("r3");
        register unsigned int offset asm("r2");

        value = (unsigned int)gState;
        asm volatile("" : "+r"(value));
        offset = 0xe1;
        offset <<= 1;
        asm volatile("" : "+r"(value), "+r"(offset));
        value += offset;
        offset = 0;
        asm volatile("" : "+r"(value), "+r"(offset));
        value = *(s16 *)(value + offset);
        if (value == 0xb) {
            __MessageID(0x1ce9);
        }
    }
    __MapActor_SetAnim(9, 1);
    __Func_8092848(9, 0, 0);
    __CutsceneWait(2);
    __ActorMessage(9, 0);
    __CutsceneEnd();
}

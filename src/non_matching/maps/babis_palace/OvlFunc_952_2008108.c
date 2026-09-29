extern void __ActorMessage(int, int);
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait(int);
extern void __Func_808e118(void);
void __Func_8092adc(unsigned int, unsigned int, unsigned int);
extern int __GetFlag(int);
void *__MapActor_GetActor(unsigned int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MessageID(int);

void OvlFunc_952_2008108(int arg0)
{
    short angle;
    int msg;
    unsigned char *actor0;

    actor0 = (unsigned char *)__MapActor_GetActor(0);
    angle = (*(unsigned short *)(actor0 + 6) + 0x2000) & 0xffffc000;
    __CutsceneStart();
    __Func_808e118();
    if (__GetFlag(0x200) == 0) {
        __SetFlag(0x200);
        __ClearFlag(0x969);
        __MessageID(0x1ff7);
        __ActorMessage(arg0, 0);
        __CutsceneWait(10);
        if (angle == 0x4000) {
            __MapActor_TravelToAnimWait(0, 0x28, 0x68);
            __Func_8092adc(0, 0, 0);
        }
        __MapActor_SetSpeed(arg0, 0x10000, 0x8000);
        __Func_8092304(arg0, 0, -0x30);
        __Func_8092304(arg0, 0x40, 0);
        __Func_8092adc(arg0, 0x4000, 0);
    } else {
        __ClearFlag(0x200);
        __SetFlag(0x969);
        __Func_8092adc(arg0, 0x4000, 0);
        __MapActor_TravelToAnimWait(0, 0x78, 0x60);
        __Func_8092adc(0, 0xc000, 0);
        __CutsceneWait(20);
        msg = 0x1ff8;
        __MessageID(msg);
        __ShowActorMessage_NoWait(arg0, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(msg + 1);
            __ActorMessage(arg0, 0);
        } else {
            __MessageID(msg + 2);
            __ActorMessage(arg0, 0);
        }
        __CutsceneWait(10);
        __MapActor_DoAnim(arg0, 3);
        __CutsceneWait(20);
        __Func_8092304(arg0, -0x40, 0);
        __Func_8092304(arg0, 0, 0x30);
    }
    __CutsceneEnd();
}

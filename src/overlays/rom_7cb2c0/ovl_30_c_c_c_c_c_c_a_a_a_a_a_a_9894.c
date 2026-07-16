typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern void __UI_Sanctum(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_945_2009894(void)
{
    u8 *actor;

    actor = __MapActor_GetActor(0);
    if ((u16)(*(u16 *)(actor + 6) - 0x2000) > 0xc000) {
        if (__GetFlag(0x928) != 0 && __GetFlag(0x93e) == 0) {
            __UI_Sanctum(0x11);
        } else {
            __UI_Sanctum(0xf);
        }
    } else {
        __CutsceneStart();
        if (__GetFlag(0x93e) != 0) {
            __MessageID(0x1f81);
        } else if (__GetFlag(0x8a0) != 0) {
            __MessageID(0x1f48);
        } else if (__GetFlag(0x928) != 0) {
            __MessageID(0x1f7f);
        } else if (__GetFlag(0x925) != 0) {
            __MessageID(0x1f7d);
        } else {
            __MessageID(0x1f7b);
        }
        if (__GetFlag(0x928) != 0 && __GetFlag(0x93e) == 0) {
            __ActorMessage(0x11, 0);
        } else {
            __ActorMessage(0xf, 0);
        }
        __CutsceneEnd();
    }
}

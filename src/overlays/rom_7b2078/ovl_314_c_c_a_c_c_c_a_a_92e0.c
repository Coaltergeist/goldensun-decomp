extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern unsigned char *__MapActor_GetActor(int actor);
extern int __GetFlag(int flag);
extern void OvlFunc_926_2008bf4(void);
extern void OvlFunc_926_2008cd4(void);
extern void OvlFunc_926_2009160(void);
extern void OvlFunc_926_200902c(int a);

void OvlFunc_926_20092e0(void) {
    unsigned char *actor;
    unsigned short x;

    __CutsceneStart();
    actor = __MapActor_GetActor(0);
    x = *(unsigned short *)(actor + 6);
    if (x > 0x4000) {
        actor = __MapActor_GetActor(0);
        x = *(unsigned short *)(actor + 6);
        if (x < 0xc000) {
            OvlFunc_926_2008bf4();
            goto after;
        }
    }
    OvlFunc_926_2008cd4();
after:
    if (__GetFlag(0x898) != 0) {
        OvlFunc_926_2009160();
    } else {
        OvlFunc_926_200902c(0);
    }
    __CutsceneEnd();
}

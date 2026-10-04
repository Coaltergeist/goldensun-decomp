extern unsigned char iwram_3001e70[];
extern unsigned char iwram_3001ebc[];
extern int __ShowActorMessage_NoWait();
extern int __Func_8091c7c(int, int);
extern void __Func_8093054(int, int);
extern void __ActorMessage(unsigned int, unsigned int);
extern void __CutsceneWait(unsigned int);
extern void __Func_809259c(int, int);
extern void *__MapActor_GetActor(int);
extern void __Func_8092950();
extern void __StartTask(void *, int);
extern void __StopTask(void *);
extern void OvlFunc_884_200a2f8(unsigned int);
extern void OvlFunc_884_200a564(void);
extern void OvlFunc_884_200a574(void);
extern void OvlFunc_884_200a590(void);
extern int _umodsi3_RAM(int, int);
extern void __PlaySound(int);

void OvlFunc_884_2008248(void) {
    __CutsceneStart();
    if (__GetFlag(0x815) != 0) {
        int msg = 0x1197;
        unsigned char *base;

        __MessageID(msg);
        if (__GetFlag(2) != 0) {
            base = *(unsigned char **)iwram_3001ebc;
            *(unsigned short *)(base + 0x1d8) += 1;
        }
        if (__GetFlag(3) != 0) {
            base = *(unsigned char **)iwram_3001ebc;
            *(unsigned short *)(base + 0x1d8) += 1;
        }
        __ShowActorMessage_NoWait(0x11, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(msg + 3);
        } else {
            __MessageID(msg + 4);
        }
        __ActorMessage(0x11, 0);
    } else {
        int *p;
        int toggle;
        int i;

        p = *(int **)*(void **)iwram_3001e70;
        __MessageID(0xf48);
        __MapActor_TurnToFaceActor(0x11, 0, 0);
        __Func_8093054(0x11, 0);
        __CutsceneWait(0x14);
        __Func_809259c(0x11, 2);
        __CutsceneWait(0xf);
        OvlFunc_884_200a564();

        toggle = 0;
        for (i = 0; (unsigned int)i <= 0x27; i++) {
            OvlFunc_884_200a2f8((unsigned int)__MapActor_GetActor(0x11));
            __WaitFrames(1);
        }

        __StartTask(OvlFunc_884_200a590, 0xc8 << 4);
        __PlaySound(0x6b);

        for (i = 0; i < 0xb4; i++) {
            if (_umodsi3_RAM(i, 10) == 0) {
                if ((toggle & 1) != 0) {
                    *p += 0xffff0000;
                } else {
                    *p += 0x80 << 9;
                }
                toggle++;
            }
            __CutsceneWait(1);
        }

        __PlaySound(0x121);
        __StopTask(OvlFunc_884_200a590);
        __WaitFrames(1);
        OvlFunc_884_200a574();
        __Func_8092950(0x11, 0);
        __CutsceneWait(0x28);
        __MessageID(0xf4b);
        __ActorMessage(0x11, 0);
    }
    __CutsceneEnd();
}

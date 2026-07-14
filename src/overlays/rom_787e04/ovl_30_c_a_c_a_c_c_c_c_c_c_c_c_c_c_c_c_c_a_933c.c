extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __Func_8092a1c(int actor, int arg1, void *commands);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_80925cc(int actor, int mode);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_801776c(int message, int arg1);
extern void __CutsceneEnd(void);

extern unsigned char gScript_887__02009e6c[];

void OvlFunc_887_200933c(void) {
    __CutsceneStart();
    if (__GetFlag(0x203) != 0) {
        register int actor asm("r0");
        register int speed asm("r1");
        register void *commands asm("r2");

        speed = 0x80;
        asm volatile("" : "+r"(speed));
        speed <<= 9;
        asm volatile("" : "+r"(speed));
        commands = gScript_887__02009e6c;
        asm volatile("" : "+r"(speed), "+r"(commands));
        actor = 8;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(commands));
        __Func_8092a1c(actor, speed, commands);

        __CutsceneWait(0x14);
        __MessageID(0x1c77);
        __ActorMessage(8, 0);
    } else {
        register int message asm("r5") = 0x1c79;

        __Func_80925cc(8, 2);
        __CutsceneWait(0x28);
        asm volatile("" : "+r"(message));
        __MessageID(message);
        message++;
        asm volatile("" : "+r"(message));
        __Func_8093040(8, 0, 0x28);
        __Func_801776c(message, 1);
    }
    __CutsceneEnd();
}

extern unsigned char ActorCmd_ARRAY_886__020092fc[];
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_8092a1c(int actor, int arg1, void *commands);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_801776c(int message, int arg1);
extern void __Func_8091a58(int arg0, int arg1);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_886_20081e8(void) {
    int flagSet;

    __CutsceneStart();
    {
        register int flag asm("r0") = 0x81b;

        asm volatile("" : "+r"(flag));
        flagSet = __GetFlag(flag);
    }
    if (flagSet != 0) {
        __MessageID(0x11a6);
        __ActorMessage(0x14, 0);
        {
            register int actor asm("r0");
            register int speed asm("r1");
            register void *commands asm("r2");

            speed = 0x80;
            asm volatile("" : "+r"(speed));
            commands = ActorCmd_ARRAY_886__020092fc;
            asm volatile("" : "+r"(speed), "+r"(commands));
            actor = 0x14;
            asm volatile("" : "+r"(actor), "+r"(speed), "+r"(commands));
            speed <<= 9;
            asm volatile("" : "+r"(actor), "+r"(speed), "+r"(commands));
            __Func_8092a1c(actor, speed, commands);
        }
    } else {
        register int message asm("r5") = 0x11a4;

        asm volatile("" : "+r"(message));
        __MessageID(message);
        message++;
        asm volatile("" : "+r"(message));
        __Func_8093040(0x14, 0, 0x14);
        __Func_801776c(message, 1);
        __Func_8091a58(0xb4, 0);
        {
            register int flag asm("r0") = 0x81b;

            asm volatile("" : "+r"(flag));
            __SetFlag(flag);
        }
    }
    __CutsceneEnd();
}

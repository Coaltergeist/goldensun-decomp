extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int mode);

void OvlFunc_939_20087f4(void)
{
    if (!__GetFlag(0x941)) {
        register int msg asm("r0");

        if (!__GetFlag(0x85a)) {
            msg = 0x1be2;
        } else {
            msg = 0x1ba5;
        }
        asm volatile("" : "+r"(msg));
        __MessageID(msg);
        __ActorMessage(0x12, 0);
    } else {
        __MessageID(0x250c);
        __ActorMessage(0x12, 0);
    }
}

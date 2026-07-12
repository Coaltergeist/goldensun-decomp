extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern int __CheckPartyItem(int item);
extern void __Func_801776c(int message, int arg1);

void OvlFunc_959_200cd50(void) {
    register int message asm("r5") = 0x256c;

    asm volatile("" : : "r"(message));
    __MessageID(message);
    __ActorMessage(0x800d, 0);
    if (__CheckPartyItem(0xea) != -1)
        __Func_801776c(message + 2, 1);
}

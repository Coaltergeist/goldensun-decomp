extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern int __GetFlag(int flag);
extern void __ActorMessage(int actor, int arg1);
extern unsigned char *iwram_3001ebc;

void OvlFunc_958_2008fd0(void)
{
    int messageBase;
    unsigned short *p;

    messageBase = 0x23cc;
    asm volatile("" : "+r"(messageBase));
    __MessageID(messageBase);
    {
        register int zero asm("r1") = 0;
        asm volatile("" : "+r"(zero));
        __Func_8092c40(8, zero);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        if (__GetFlag(0x95 << 4) && !__GetFlag(0x96f)) {
            __MessageID(messageBase + 8);
        }
        __ActorMessage(8, 0);
    } else {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
        __ActorMessage(8, 0);
    }
}

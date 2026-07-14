extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(int message);
extern void __Func_8093040(int, int, int);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_809280c(int, int, int);
extern void __Func_80925cc(int, int);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int mode);

void OvlFunc_882_2009600(void)
{
    if (!__GetFlag(0x836) && !__GetFlag(0x837)) {
        __CutsceneStart();
        __MessageID(0xe6c);
        __Func_8093040(0x16, 0, 0x14);
        {
            register int actor asm("r0") = 0;
            register int emote asm("r1") = 0x101;
            register int duration asm("r2") = 0x28;

            asm volatile("" : : "r"(actor), "r"(emote), "r"(duration));
            __MapActor_Emote(actor, emote, duration);
        }
        {
            register int x asm("r1") = 0xbf;
            register int actor asm("r0") = 0;

            asm volatile("" : "+r"(x), "+r"(actor));
            x <<= 1;
            asm volatile("" : "+r"(x));
            __Func_80921c4(actor, x, 0x26b);
        }
        {
            register int c asm("r2") = 0;
            register int a asm("r0") = 0;
            register int b asm("r1") = 0x16;

            asm volatile("" : : "r"(a), "r"(b), "r"(c));
            __Func_809280c(a, b, c);
        }
        __Func_80925cc(0, 2);
        __CutsceneWait(0x1e);
        __ActorMessage(0x16, 0);
        __SetFlag(0x836);
        __CutsceneEnd();
    }
}

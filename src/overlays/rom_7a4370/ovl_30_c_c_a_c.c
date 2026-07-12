extern unsigned int iwram_3001ebc;
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void OvlFunc_917_20092f4(int actor, int value);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int value);
extern int __CheckPartyItem(int item);
extern void __Func_8091200(int value, int mode);
extern void __Func_8091254(int value);
extern void __WaitFrames(int frames);
extern void __Func_8093040(int message, int value, int actor);
extern void __Func_80925cc(int actor, int value);
extern void __CutsceneEnd(void);

void OvlFunc_917_2008158(void)
{
    __CutsceneStart();

    if (__GetFlag(0x845) != 0) {
        OvlFunc_917_20092f4(0xa, 1);
        __MessageID(0x151c);
        __ActorMessage(8, 0);
        OvlFunc_917_20092f4(0xa, 0);
    } else if (__GetFlag(0x844) != 0) {
        OvlFunc_917_20092f4(0xa, 1);
        __MessageID(0x14eb);
        __ActorMessage(8, 0);
        {
            register int actor asm("r0");
            register int zero asm("r1");

            zero = 0;
            asm volatile("" : "+r"(zero));
            actor = 0xa;
            asm volatile("" : "+r"(actor), "+r"(zero));
            OvlFunc_917_20092f4(actor, zero);
        }
        {
            register int result asm("r0") = __CheckPartyItem(0xb8);
            register int invalid asm("r1");

            invalid = 1;
            asm volatile("" : "+r"(result), "+r"(invalid));
            invalid = -invalid;
            asm volatile("" : "+r"(result), "+r"(invalid));
            if (result != invalid) {
                register unsigned char *base asm("r3") = (unsigned char *)iwram_3001ebc;
                register unsigned int offset asm("r1") = 0xb9;
                register unsigned short *field asm("r2");
                register unsigned int one asm("r3");

                asm volatile("" : "+r"(base), "+r"(offset));
                offset <<= 1;
                field = (unsigned short *)(base + offset);
                asm volatile("" : "+r"(field));
                one = 1;
                *field = one;
            }
        }
    } else {
        __MessageID(0x14c9);
        __ActorMessage(8, 0);
        __Func_8091200(0x406218, 1);
        __Func_8091254(0x14);
        __WaitFrames(0x28);
        {
            register int message asm("r0");
            register int zero asm("r1");
            register int actor asm("r2");

            actor = 0xa;
            asm volatile("" : "+r"(actor));
            message = 0x200e;
            asm volatile("" : "+r"(message), "+r"(actor));
            zero = 0;
            asm volatile("" : "+r"(message), "+r"(zero), "+r"(actor));
            __Func_8093040(message, zero, actor);
        }
        __Func_80925cc(0, 2);
        {
            register int actor asm("r0");
            register int zero asm("r1");

            actor = 0x200e;
            asm volatile("" : "+r"(actor));
            zero = 0;
            asm volatile("" : "+r"(actor), "+r"(zero));
            __ActorMessage(actor, zero);
        }
        __Func_8091200(0x80 << 9, 1);
        __Func_8091254(0x14);
        __WaitFrames(0x28);
    }

    __CutsceneEnd();
}

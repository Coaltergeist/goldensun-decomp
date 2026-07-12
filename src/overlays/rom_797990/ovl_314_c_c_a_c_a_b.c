extern unsigned char iwram_3001ebc[];
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_8092848(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int message);
extern int __CheckPartyItem(int item);
extern int __GetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_901_2008e90(void) {
    __CutsceneStart();
    {
        register int message asm("r0");

        asm volatile("ldr %0, .LOvlFunc_901_2008e90_literals"
                     : "=r"(message));
        __MessageID(message);
    }
    __MapActor_SetAnim(0x12, 0);
    __Func_8092848(0x12, 0, 0);
    __CutsceneWait(2);
    __ActorMessage(0x12, 0);
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");

        arg1 = 1;
        asm volatile("" : "+r"(arg1));
        arg0 = 0x12;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __MapActor_SetAnim(arg0, arg1);
    }
    {
        register int itemSlot asm("r0") = __CheckPartyItem(0xe7);
        register int invalid asm("r1");

        invalid = 1;
        asm volatile("" : "+r"(itemSlot), "+r"(invalid));
        invalid = -invalid;
        asm volatile("" : "+r"(itemSlot), "+r"(invalid));
        if (itemSlot != invalid) {
            register int flag asm("r0");

            asm volatile("ldr %0, .LOvlFunc_901_2008e90_literals+4"
                         : "=r"(flag));
            if (__GetFlag(flag) == 0) {
                register unsigned int temp asm("r3");
                register unsigned int offset asm("r1");
                register unsigned short *field asm("r2");

                asm volatile("ldr %0, .LOvlFunc_901_2008e90_literals+8"
                             : "=r"(temp));
                asm volatile("" : "+r"(temp));
                offset = 0xb9;
                asm volatile("" : "+r"(temp), "+r"(offset));
                temp = *(unsigned int *)temp;
                asm volatile("" : "+r"(temp), "+r"(offset));
                offset <<= 1;
                asm volatile("" : "+r"(temp), "+r"(offset));
                field = (unsigned short *)(temp + offset);
                asm volatile("" : "+r"(field));
                temp = 1;
                asm volatile("" : "+r"(field), "+r"(temp));
                *field = temp;
            }
        }
    }
    __CutsceneEnd();
}

asm(
    ".text\n"
    ".align 2, 0\n"
    ".LOvlFunc_901_2008e90_literals:\n"
    ".word 0x1342\n"
    ".word 0x858\n"
    ".word iwram_3001ebc\n"
    ".size OvlFunc_901_2008e90, .-OvlFunc_901_2008e90\n");

extern unsigned char iwram_3001ebc[];
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __MapActor_SetAnim(int actor, int animation);
extern void OvlFunc_898_200973c(int actor, int arg1, int arg2);
extern void __ActorMessage(int actor, int message);
extern int __CheckPartyItem(int item);
extern int __GetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_898_2008bec(void) {
    __CutsceneStart();
    __MessageID(0x1342);
    __MapActor_SetAnim(0x13, 0);
    OvlFunc_898_200973c(0x13, 0, 2);
    __ActorMessage(0x13, 0);
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");

        arg1 = 1;
        asm volatile("" : "+r"(arg1));
        arg0 = 0x13;
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
        if (itemSlot != invalid && __GetFlag(0x858) == 0) {
        register unsigned int temp asm("r3");
        register unsigned int offset asm("r1");
        register unsigned short *field asm("r2");

        temp = (unsigned int)iwram_3001ebc;
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
    __CutsceneEnd();
}

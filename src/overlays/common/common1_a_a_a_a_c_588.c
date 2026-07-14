extern unsigned char gState[];
extern unsigned char Value_8f[] asm("0x8f");
extern unsigned char Value_90[] asm("0x90");
extern void __Func_8019908(int value, int tag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);

void OvlFunc_common1_588(int actor, int value)
{
    register unsigned int address asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");
    register int message asm("r0");

    __Func_8019908(value, 5);

    address = (unsigned int)gState;
    offset = 0xe0;
    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    state = *(short *)(address + offset);

    address = (unsigned int)Value_8f;
    asm volatile("" : "+r"(address), "+r"(state));
    asm volatile("cmp %0, %1\n\tbne .Lcommon588_a" : : "r"(state), "r"(address) : "cc");
    message = 0x2076;
    asm volatile("" : "+r"(message));
    asm volatile("b .Lcommon588_done\n.Lcommon588_a:");

    address = (unsigned int)Value_90;
    asm volatile("" : "+r"(address), "+r"(state));
    asm volatile("cmp %0, %1\n\tbne .Lcommon588_b" : : "r"(state), "r"(address) : "cc");
    message = 0x2078;
    asm volatile("" : "+r"(message));
    asm volatile("b .Lcommon588_done\n.Lcommon588_b:");

    message = 0x207a;
    asm volatile("" : "+r"(message));
    asm volatile(".Lcommon588_done:");

    message += 1;
    asm volatile("" : "+r"(message));
    __MessageID(message);
    __ActorMessage(actor, 0);
}

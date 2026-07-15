typedef unsigned int u32;

extern u32 iwram_3001e40;
extern u32 __Random(void);
extern int __divsi3(int, int) asm("_divsi3_RAM");
extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, int *);
extern void OvlFunc_968_2008118_abi(int, int, int, int)
    asm("OvlFunc_968_2008118");

int OvlFunc_968_20085e4(int *object)
{
    register int stateBits asm("r7");
    register int *source asm("r10") = object;
    register int *parameters asm("r8");
    register int x asm("r6");
    register int y asm("r5");
    register u32 work asm("r3");
    register int *pointer asm("r2");
    register void *stackPointer asm("sp");
    register int arg2 asm("r2");
    register int arg3 asm("r3");
    register u32 result asm("r0");
    register int call0 asm("r0");
    register int call1 asm("r1");
    register volatile int *outgoing asm("sp");
    u32 random;
    int local[14];

    stateBits = iwram_3001e40;
    work = 7;
    stateBits &= work;
    if (stateBits == 0) {
        random = (__Random() << 1) >> 16;
        pointer = (int *)0x10;
        asm volatile("" : "+r"(pointer));
        work = 3;
        asm volatile("" : "+r"(pointer), "+r"(work));
        pointer = (int *)((u32)pointer + (u32)stackPointer);
        work -= random;
        pointer[0] = work;
        work = 0x6666;
        pointer[2] = work;
        pointer[3] = work;
        work = 0xe;
        pointer[1] = work;
        parameters = pointer;

        random = __Random();
        work = (random << 3) + random;
        pointer = source;
        work >>= 16;
        x = pointer[2];
        work -= 4;
        work <<= 16;
        x += work;
        random = (__Random() << 5) >> 16;
        pointer = source;
        work = 0x20;
        y = pointer[3];
        work -= random;
        work <<= 16;
        y += work;
        random = __Random();
        work = random;
        asm volatile("" : "+r"(work));
        result = work << 2;
        asm volatile("" : "+r"(result), "+r"(work));
        result += work;
        result >>= 16;
        work = 0xa0;
        asm volatile("" : "+r"(result));
        work <<= 11;
        asm volatile("" : "+r"(work));
        result <<= 16;
        result += work;
        result = __divsi3(result, 10);

        work = (u32)source;
        asm volatile("" : "+r"(work));
        arg2 = *(int *)(work + 0x10);
        asm volatile("" : "+r"(arg2));
        work = 0xb0;
        work <<= 12;
        asm volatile("" : "+r"(work));
        outgoing[2] = work;
        work = (u32)parameters;
        outgoing[0] = result;
        outgoing[3] = work;
        asm volatile("mov %0, %3\n\tmov %1, %4\n\tmov %2, #0"
                     : "=r"(call0), "=r"(call1), "=r"(arg3)
                     : "r"(x), "r"(y), "r"(arg2)
                     : "memory");
        outgoing[1] = stateBits;
        OvlFunc_968_2008118_abi(call0, call1, arg2, arg3);
    }
    return 0;
}

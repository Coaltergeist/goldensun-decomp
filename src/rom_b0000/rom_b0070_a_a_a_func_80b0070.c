typedef unsigned char u8;
typedef unsigned short u16;
typedef signed char s8;

extern u8 iwram_3001f2c[];
extern int _Func_8078480(int id);
extern int _Func_8078ad0(int id, int arg);

int Func_80b0070(void)
{
    u8 *rawBase = *(u8 **)iwram_3001f2c;
    register u8 *base asm("r8");
    register int count asm("r10");
    register int one asm("r2");
    register int bound asm("r3");
    register int endOffset asm("r3");
    register u8 *endBase asm("r1");
    register int id asm("r6");
    register u16 *output asm("r7");

    __asm__ volatile (
        "mov r7, #0x9b\n"
        "mov r8, r3\n"
        "mov r1, #0\n"
        "lsl r7, #2\n"
        "mov r10, r1\n"
        "mov r6, #0\n"
        "add r7, r8"
        : "=r" (base), "=r" (count), "=r" (id), "=r" (output)
        : "r" (rawBase) : "r1");

    do {
        int category = *(s8 *)(base + 0x3a9);
        if (category == _Func_8078480(id) && _Func_8078ad0(id, 0)) {
            one = 1;
            __asm__ volatile ("" : : "r" (one) : "memory");
            *output = id;
            count += one;
            output++;
        }
        bound = 0x1ff;
        __asm__ volatile ("" : : "r" (bound));
        id++;
    } while (id <= bound);

    __asm__ volatile (
        "mov r1, r10\n"
        "mov r2, #0x9b\n"
        "lsl r3, r1, #1\n"
        "lsl r2, #2\n"
        "add r3, r2"
        : "=r" (endOffset) : "r" (count) : "r1", "r2");
    *(u16 *)(({ endBase = base; endBase; }) + endOffset) = 0;
    base[0x3a6] = count;
    return count;
}

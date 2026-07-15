typedef unsigned short u16;

extern unsigned char *iwram_3001f2c;
extern int Func_80a10d0(void *, int, int, int, int, int);
extern void *_Func_801ec6c(int, int, int, void *, int, int);
extern void Func_80a33d4(void *, void *);
extern void Func_80a9cf8(void *);
extern void Func_80a8604(void *, int, int);

void Func_80a8088(int value, int unused)
{
    unsigned char *state = iwram_3001f2c;
    void *window = *(void **)(state + 0x24);
    int created = 0;

    if (window == 0) {
        created = Func_80a10d0(state + 0x24, 0, 5, 0x1e, 0xf, 2);
        window = *(void **)(state + 0x24);
    }
    if (created != 0) {
        register void *object asm("r0");
        asm volatile(
            "mov r3, #0\n"
            "str r3, [sp]\n"
            "str r3, [sp, #4]\n"
            "mov r2, #0\n"
            "mov r3, r5\n"
            "mov r0, r7\n"
            "mov r1, #0\n"
            "bl _Func_801ec6c"
            : "=l" (object)
            :
            : "r1", "r2", "r3", "memory", "lr");
        *(void **)(state + 0x17c) = object;
        {
            int modeValue;
            asm volatile(
                "add r2, #0xa4\n"
                "mov %0, #0xf0\n"
                "strb %0, [r0, #0xf]\n"
                "add %0, r6, r2\n"
                "ldrh %0, [%0]"
                : "=&l" (modeValue)
                :
                : "r2", "memory");
            if (modeValue == 3)
                Func_80a33d4(state, window);
        }
        Func_80a9cf8(window);
        Func_80a8604(window, value, 0x100);
    } else {
        Func_80a8604(window, value, 0);
    }
}

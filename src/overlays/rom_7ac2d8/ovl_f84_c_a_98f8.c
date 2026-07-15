typedef unsigned int u32;

extern void __CopyMapTiles(int, int, int, int, int, int);
extern u32 __Random(void);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, u32 *);
extern void __CutsceneWait(int);
extern void __StopTask(void *);
extern void OvlFunc_924_2009790(void);

void OvlFunc_924_20098f8(void)
{
    register u32 *saved_config asm("r8");
    u32 *config;
    register int one asm("r10");
    register unsigned row asm("r7");
    register int x asm("r6");
    register unsigned i asm("r5");
    u32 config_storage[10];
    register int one_temp asm("r3");

    asm volatile(
        "mov r3, #1\n"
        "str r3, [sp]\n"
        "str r3, [sp, #4]\n"
        "mov r2, #0x6e\n"
        "mov r3, #0x24\n"
        "mov r0, #0x4e\n"
        "mov r1, #0x3a\n"
        "bl __CopyMapTiles"
        : : : "r0", "r1", "r2", "r3", "memory");
    config = config_storage;
    asm volatile("" : "+r"(config));
    config[1] = 5;
    config[2] = 0x8000;
    config[3] = 0x8000;
    one_temp = 1;
    asm volatile("" : "+r"(one_temp));
    saved_config = config;
    asm volatile("" : "+r"(saved_config));
    row = 0;
    asm volatile("" : "+r"(row), "+r"(one_temp));
    one = one_temp;
    asm volatile("" : "+r"(one));

    do {
        x = 0xfffe0000;
        i = 1;
        do {
            register unsigned test asm("r3") = i;
            register int mask asm("r2") = one;
            asm volatile("" : "+r"(test), "+r"(mask));
            if (test & mask) {
                u32 random = __Random();
                int z = (0x248 - ((random * 5) >> 16)) << 16;
                register int y asm("r0") = row;
                y <<= 19;
                y = x - y + 0x2d80000;
                OvlFunc_common0_10c(y, 0, z, 0xffffc000,
                                    0, 0, 0x90000, saved_config);
                __CutsceneWait(1);
            }
            {
                register int step asm("r2") = 0xfffe0000;
                asm volatile("" : "+r"(step));
                i++;
                x += step;
            }
        } while (i <= 7);
        asm volatile("" : "+r"(one));
        __CopyMapTiles(0x6f, 0x23, 0x6d - row, 0x24, one, one);
        row++;
    } while (row <= 2);
    __StopTask(OvlFunc_924_2009790);
}

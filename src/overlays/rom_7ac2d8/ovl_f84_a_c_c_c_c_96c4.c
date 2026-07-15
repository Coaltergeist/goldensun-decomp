typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CopyMapTiles(s32, s32, s32, s32, s32, s32);
extern void __CutsceneWait(s32 frames);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);
extern void __Func_8012330(s32 x, s32 y, s32 z);
extern void __Func_8012350(void);
extern void __PlaySound(s32 id);

void OvlFunc_924_20096c4(s32 arg0) {
    s32 c6;
    s32 c2;
    s32 var_r8;
    u32 i;
    s32 var_r6;

    __PlaySound(0xdb);
    c6 = 6;
    i = 0;
    var_r8 = 0x29;
    var_r6 = 0x28;
    c2 = 2;
    do {
        __CopyMapTiles(var_r6, 0x20, var_r8, 0x20, 3 - i, c6);
        {
            register s32 s0 asm("r3");

            s0 = 1;
            asm volatile("" : "+r"(s0));
            __CopyMapTiles(0x27, 0x33, var_r6, 0x20, s0, c6);
        }
        {
            register s32 s1 asm("r3");

            s1 = 4;
            asm volatile("" : "+r"(s1));
            __CopyMapTiles(0x69, 0x33, i + 0x6a, 0x20, c2, s1);
        }
        if (arg0 != 0) {
            {
                register s32 arg0 asm("r0");
                register s32 arg1 asm("r1");
                register s32 arg2 asm("r2");

                arg0 = 0xa0;
                asm volatile("" : "+r"(arg0));
                arg1 = 0xa0;
                asm volatile("" : "+r"(arg0), "+r"(arg1));
                arg2 = 0x80;
                asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
                arg0 <<= 11;
                arg1 <<= 11;
                arg2 <<= 9;
                __Func_8012330(arg0, arg1, arg2);
            }
            {
                register s32 arg0 asm("r0");
                register s32 arg1 asm("r1");
                register s32 arg2 asm("r2");

                arg0 = 1;
                asm volatile("" : "+r"(arg0));
                arg1 = 1;
                asm volatile("" : "+r"(arg0), "+r"(arg1));
                arg0 = -arg0;
                arg1 = -arg1;
                arg2 = 0xe666;
                __Func_8012330(arg0, arg1, arg2);
            }
            __CutsceneWait(arg0);
        }
        i += 1;
        var_r8 += 2;
        var_r6 += 2;
    } while (i <= 2);
    __PlaySound(0x120);
    {
        register s32 s0 asm("r3");
        register s32 s1 asm("r2");

        s0 = 0x2a;
        asm volatile("" : "+r"(s0));
        s1 = 0x21;
        asm volatile("" : "+r"(s0), "+r"(s1));
        __Func_8010704(0x6a, 0x21, 4, 5, s0, s1);
    }
    __Func_8012350();
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __Func_8012330(int a, int b, int c);
extern void __Actor_SetAnim(u8 *actor, int anim);
extern void __PlaySound(int id);

void OvlFunc_932_2009770(u8 *self)
{
    s16 *timer1;
    s16 *timer2;
    s32 pos;
    s32 limit;

    timer1 = (s16 *)(self + 0x66);
    if (*timer1 != 0) {
        (*timer1)--;
        if (*timer1 == 1) {
            register int a0 asm("r0");
            register int a1 asm("r1");
            register int a2 asm("r2");
            a0 = -1;
            a1 = -1;
            asm volatile("" : "+r"(a0), "+r"(a1));
            a2 = 0xe666;
            __Func_8012330(a0, a1, a2);
        }
    }

    if (*(s32 *)(self + 0x28) == 0) {
        __Actor_SetAnim(self, 1);
        limit = *(s32 *)(self + 0x14);
        pos = *(s32 *)(self + 0xc) + 0xfffe8000;
        *(s32 *)(self + 0xc) = pos;
        if (pos < limit) {
            if (*(s32 *)(self + 0x68) != 0) {
                __PlaySound(0xe5);
                {
                    register int b3 asm("r3");
                    register int b0 asm("r0");
                    register int b2 asm("r2");
                    register int b1 asm("r1");
                    b3 = 4;
                    asm volatile("" : "+r"(b3));
                    b0 = 0x80;
                    asm volatile("" : "+r"(b0), "+r"(b3));
                    b2 = 0x80;
                    asm volatile("" : "+r"(b0), "+r"(b2), "+r"(b3));
                    *(s32 *)(self + 0x68) = 0;
                    b2 <<= 9;
                    asm volatile("" : "+r"(b0), "+r"(b2), "+r"(b3));
                    *timer1 = b3;
                    b0 <<= 9;
                    asm volatile("" : "+r"(b0));
                    b1 = 0;
                    __Func_8012330(b0, b1, b2);
                }
                limit = *(s32 *)(self + 0x14);
            }
            *(s32 *)(self + 0xc) = limit;
        }
        self[0x5b] = 1;
    } else {
        self[0x5b] = 0;
    }

    timer2 = (s16 *)(self + 0x64);
    if (*timer2 == 0) {
        __PlaySound(0x98);
        *(s32 *)(self + 0x68) = 1;
        __Actor_SetAnim(self, 2);
        *(s32 *)(self + 0x28) = 0x30000;
    }
    (*timer2)++;
    if (*timer2 == 0x3c) {
        register int z3 asm("r3");
        z3 = 0;
        *timer2 = z3;
    }
}

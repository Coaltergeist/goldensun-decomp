typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __Func_8012330(int arg0, int arg1, int arg2);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void __PlaySound(int sound);

void OvlFunc_931_20086f0(u8 *actor)
{
    s16 *timer2 = (s16 *)(actor + 0x66);
    s16 *timer1;

    if (*timer2 != 0) {
        *timer2 = *timer2 - 1;
        if (*timer2 == 1) {
            register int negOneA asm("r0") = -1;
            register int negOneB asm("r1") = -1;
            asm volatile("" : "+r"(negOneA), "+r"(negOneB));
            __Func_8012330(negOneA, negOneB, 0xe666);
        }
    }

    {
        s32 state = *(s32 *)(actor + 0x28);

        if (state == 0) {
            s32 pos;

            __Actor_SetAnim(actor, 1);
            pos = *(s32 *)(actor + 0xc) + 0xfffe8000;
            *(s32 *)(actor + 0xc) = pos;
            if (pos < *(s32 *)(actor + 0x14)) {
                if (*(s32 *)(actor + 0x68) != 0) {
                    register int hiA asm("r1");
                    register int hiB asm("r2");
                    register int zero asm("r0");
                    s32 four;

                    __PlaySound(0xe5);
                    four = 4;
                    asm volatile("mov r1, #0x80\n\tmov r2, #0x80" : "=r"(hiA), "=r"(hiB));
                    *(s32 *)(actor + 0x68) = state;
                    hiB = hiB << 9;
                    *timer2 = four;
                    zero = 0;
                    hiA = hiA << 9;
                    asm volatile("" : "+r"(hiA), "+r"(hiB), "+r"(zero));
                    __Func_8012330(zero, hiA, hiB);
                }
                *(s32 *)(actor + 0xc) = *(s32 *)(actor + 0x14);
            }
            actor[0x5b] = 1;
        } else {
            actor[0x5b] = 0;
        }
    }

    timer1 = (s16 *)(actor + 0x64);
    if (*timer1 == 0) {
        __PlaySound(0x98);
        *(s32 *)(actor + 0x68) = 1;
        __Actor_SetAnim(actor, 2);
        *(s32 *)(actor + 0x28) = 0x30000;
    }
    *timer1 = *timer1 + 1;
    if (*timer1 == 0x3c) {
        s32 zeroVal = 0;
        *timer1 = zeroVal;
    }
}

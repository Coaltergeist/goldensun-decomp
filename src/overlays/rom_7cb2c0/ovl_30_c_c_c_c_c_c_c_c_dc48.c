extern unsigned int EffectTimer_7f84 __asm__(".L7f84");
extern unsigned int __Random(void);
extern void __PlaySound(int sound);
extern void __Func_8012330(int x, int y, int z);

/* 間を置いて雷鳴と画面揺れを発生する */
void OvlFunc_945_200dc48(void)
{
    register int x asm("r0");
    register int y asm("r1");
    register int z asm("r2");
    unsigned int timer = EffectTimer_7f84;

    if (timer != 0) {
        timer--;
        EffectTimer_7f84 = timer;
        if (timer == 0x46) {
            x = 1;
            y = 1;
            asm volatile("" : "+r"(x), "+r"(y));
            x = -x;
            y = -y;
            z = 0xe666;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
            __Func_8012330(x, y, z);
        }
    } else {
        unsigned int random = __Random();
        unsigned int sample = ((random << 4) - random) << 3;

        if ((sample >> 16) == 0) {
            __PlaySound(0xb5);
            x = 0x80;
            y = 0x80;
            z = 0x80;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
            x <<= 10;
            y <<= 10;
            z <<= 9;
            __Func_8012330(x, y, z);
            EffectTimer_7f84 = 0x50;
        }
    }
}

extern unsigned int EffectTimer_269c __asm__(".L269c");
extern unsigned int __Random(void);
extern void __PlaySound(int sound);
extern void __Func_8012330(int x, int y, int z);

void OvlFunc_895_2009ac8(void)
{
    register int x asm("r0");
    register int y asm("r1");
    register int z asm("r2");
    unsigned int timer = EffectTimer_269c;

    if (timer != 0) {
        timer--;
        EffectTimer_269c = timer;
        if (timer == 0x28) {
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
            __PlaySound(0x8a);
            x = 0x80;
            y = 0x80;
            z = 0x80;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
            x <<= 9;
            y <<= 10;
            z <<= 9;
            __Func_8012330(x, y, z);
            EffectTimer_269c = 0x50;
        }
    }
}

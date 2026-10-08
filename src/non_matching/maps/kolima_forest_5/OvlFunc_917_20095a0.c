extern int L1dcc __asm__(".Lm917_1dcc");
extern int L1dc0[] __asm__(".Lm917_1dc0");
extern void *__CreateActor(int, int, int, int);
extern int __Func_8096c48(void *, int);
extern void __Actor_SetSpriteFlags(void *, int);
extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);

void OvlFunc_917_20095a0(void) {
    int val = 0;

    switch (L1dcc) {
    case 0:
    case 10:
    case 20:
    case 30:
    case 40:
        __PlaySound(0xdc);
        {
            unsigned int angle = 0;
            unsigned int i;

            for (i = 0; i <= 5; i++) {
                char *actor = (char *)__CreateActor(0x11d, L1dc0[0], L1dc0[1], L1dc0[2]);
                if (actor != 0) {
                    char *sprite;
                    val = __Func_8096c48(*(void **)(actor + 0x50), val);
                    actor[0x55] = 0;
                    sprite = *(char **)(actor + 0x50);
                    sprite[9] = (sprite[9] & ~0xc) | 4;
                    __Actor_SetSpriteFlags(actor, 0);
                    __Actor_SetAnim(actor, 1);
                    *(short *)(actor + 0x64) = 0;
                    *(short *)(actor + 0x66) = _udivsi3_RAM(angle, 360);
                    *(int *)(actor + 0x38) = L1dc0[0];
                    *(int *)(actor + 0x3c) = L1dc0[1];
                    *(int *)(actor + 0x40) = L1dc0[2];
                    *(int *)(actor + 0x30) = 0x19999;
                    *(void **)(actor + 0x6c) = OvlFunc_917_200952c;
                }
                angle += 0x3c0000;
            }
        }
        break;
    }

    L1dcc++;
    if (L1dcc > 0x78) {
        L1dcc = 0;
    }
}
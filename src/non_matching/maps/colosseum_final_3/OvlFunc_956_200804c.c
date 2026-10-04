extern signed char L4c20[][6] __asm__(".Lm956_4c20");
extern unsigned char L5484[] __asm__(".Lm956_5484");
extern unsigned char L5480[] __asm__(".Lm956_5480");
extern struct Actor *__MapActor_GetActor(int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_956_200804c(void)
{
    extern unsigned char gState[];
    extern unsigned char *iwram_3001ebc;
    unsigned char *p;
    unsigned int r2;
    struct Actor *actor;
    int r4;
    int r6;
    int r7;

    p = iwram_3001ebc;
    r2 = 0xfa;
    r2 <<= 1;
    actor = __MapActor_GetActor(*(int *)((char *)gState + r2));
    r4 = actor->pos.z >> 20;

    if (*(int *)L5484 == 0) {
        *(int *)L5480 = (*(int *)L5480 + 1) & 3;
        for (r6 = 0x12, r7 = 0x21; r6 <= 0x16; r6++, r7 += 2) {
            int val = L4c20[*(int *)L5480][r6 - 0x12];
            __MapActor_SetAnim(r6, val);
            __MapActor_SetAnim(r6 + 5, val + 8);
            __Func_8010704(0x20, 0xb, 1, 2, r7, 0xb);
            if (val != 7) {
                __Func_8010704(0x4a, 0xc, 1, 1, r7, 0xb);
            }
        }
        __MapActor_SetAnim(0x1c, L4c20[*(int *)L5480][5]);
    } else {
        for (r6 = 0x12; r6 <= 0x16; r6++) {
            int val = L4c20[*(int *)L5480][r6 - 0x12];
            if ((unsigned int)(actor->pos.x - (r6 << 21) + 0x31ffff) <= 0x13fffe) {
                if (r4 == 11 && val == 4) {
                    *(short *)(p + 0x182) = val;
                }
                if (r4 == 12 && val == 5) {
                    *(short *)(p + 0x182) = val;
                }
            }
        }
    }

    (*(int *)L5484)++;
    if ((unsigned int)*(int *)L5484 > 17) {
        *(int *)L5484 = 0;
    }
}

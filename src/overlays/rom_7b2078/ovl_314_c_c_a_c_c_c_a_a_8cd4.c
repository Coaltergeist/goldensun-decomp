typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int);
extern void __WaitFrames(int);
extern int __cos(int);
extern int __sin(int);
extern void __PlaySound(int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, int);

void OvlFunc_926_2008cd4(void)
{
    register u8 *actor asm("r7");
    register unsigned count asm("r6");
    register int angle asm("r5");
    register int shared asm("r8");
    u8 *result;
    int zero;

    result = __MapActor_GetActor(0x13);
    count = 8;
    actor = result;
    asm volatile("" : "+r"(actor), "+r"(count));
    do {
        angle = count << 12;
        *(u16 *)(*(u8 **)(actor + 0x50) + 0x1e) = angle;
        __WaitFrames((12 - count) * 2);
        *(int *)(actor + 8) -= __cos(angle) * 6;
        *(int *)(actor + 0x10) -= __sin(angle) * 6;
        count++;
    } while (count <= 12);

    *(int *)(actor + 0xc) = 0x120000;
    *(int *)(actor + 0x3c) = 0x120000;
    *(int *)(actor + 0x18) = 0xffff3334;
    __PlaySound(0xe3);

    count = 0x80;
    count <<= 12;
    zero = 0;
    {
        register int value asm("r4") = 0x3333;
        shared = value;
        OvlFunc_common0_10c(*(int *)(actor + 8) - 0xc0000,
                            *(int *)(actor + 0xc),
                            *(int *)(actor + 0x10) + count, 0x10000,
                            value, zero, zero, zero);
    }
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + count, 0xcccc,
                        0x4ccc, zero, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8) + 0xa0000,
                        *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + count, shared,
                        0x6666, zero, zero, zero);
}

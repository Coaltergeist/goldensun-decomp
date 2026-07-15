typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int);
extern void __WaitFrames(int);
extern int __cos(int);
extern int __sin(int);
extern void __PlaySound(int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, int);

void OvlFunc_926_2008bf4(void)
{
    register u8 *actor asm("r7");
    register unsigned count asm("r6");
    register int wait asm("r8");
    register int angle asm("r5");
    register int zero asm("r5");
    u8 *actor_result;

    actor_result = __MapActor_GetActor(0x13);
    count = 8;
    actor = actor_result;
    wait = count;
    asm volatile("" : "+r"(actor), "+r"(count), "+r"(wait));

    do {
        angle = count << 12;
        *(u16 *)(*(u8 **)(actor + 0x50) + 0x1e) = angle;
        __WaitFrames(wait);
        *(int *)(actor + 8) += __cos(angle) * 6;
        *(int *)(actor + 0x10) += __sin(angle) * 6;
        count--;
        wait -= 2;
    } while (count > 3);

    *(int *)(actor + 0xc) = 0x120000;
    *(int *)(actor + 0x3c) = 0x120000;
    __PlaySound(0xe3);
    count = 0x80;
    count <<= 12;
    zero = 0;

    OvlFunc_common0_10c(*(int *)(actor + 8) - 0xc0000,
                        *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + count,
                        0xffffcccd, 0x6666, zero, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8),
                        *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + count,
                        0xffff3334, 0x4ccc, zero, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8) + 0xa0000,
                        *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + count,
                        0xffff0000, 0x3333, zero, zero, zero);
}

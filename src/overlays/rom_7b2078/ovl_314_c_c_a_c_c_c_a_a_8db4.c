typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int);
extern void __WaitFrames(int);
extern void __PlaySound(int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, int);
extern void OvlFunc_common0_10c_4(int, int, int, int) asm("OvlFunc_common0_10c");

void OvlFunc_926_2008db4(void)
{
    register u8 *actor asm("r7");
    register unsigned count asm("r6");
    register int wait asm("r5");
    register int vertical asm("r8");
    register int shared asm("r10");
    register int initial_flag asm("r2");
    u8 *result;
    int zero;

    result = __MapActor_GetActor(0x13);
    initial_flag = 0x80000000;
    asm volatile("" : "+r"(initial_flag));
    actor = result;
    count = 0;
    wait = 8;
    vertical = initial_flag;
    asm volatile("" : "+r"(actor), "+r"(count), "+r"(wait), "+r"(vertical));
    do {
        register int position asm("r3");
        register int delta asm("r2");
        __WaitFrames(wait);
        position = *(int *)(actor + 0x10);
        asm volatile("" : "+r"(position));
        delta = 0xffff0000;
        asm volatile("" : "+r"(position), "+r"(delta));
        position += delta;
        *(int *)(actor + 0x10) = position;
        count++;
        *(int *)(actor + 0x40) = vertical;
        wait -= 2;
    } while (count <= 3);

    zero = 0;
    *(u16 *)(*(u8 **)(actor + 0x50) + 0x1e) = zero;
    __PlaySound(0xe3);

    vertical = 0xfff80000;
    count = 0xffffcccd;
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + vertical, 0xffff3334,
                        zero, count, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + vertical, 0xcccc,
                        zero, count, zero, zero);

    {
        register int x asm("r0") = *(int *)(actor + 8);
        register int y asm("r1");
        register int z asm("r2");
        register int value asm("r3");
        asm volatile("" : "+r"(x));
        z = 0xfffa0000;
        asm volatile("" : "+r"(x), "+r"(z));
        value = 0xa0;
        x += z;
        value <<= 12;
        z = *(int *)(actor + 0x10);
        vertical = value;
        count = 0xffff0000;
        value = 0x3333;
        y = *(int *)(actor + 0xc);
        z += vertical;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z), "+r"(value));
        asm volatile(
            "str %1, [sp]\n"
            "str %2, [sp, #4]\n"
            "str %1, [sp, #8]\n"
            "str %1, [sp, #12]\n"
            "mov %0, %3"
            : "=r"(shared) : "r"(zero), "r"(count), "r"(value) : "memory");
        OvlFunc_common0_10c_4(x, y, z, value);
    }
    {
        register int x asm("r0") = *(int *)(actor + 8);
        register int z asm("r2");
        z = 0xc0;
        z <<= 11;
        x += z;
        asm volatile("" : "+r"(x), "+r"(z));
        z = *(int *)(actor + 0x10);
        z += vertical;
        OvlFunc_common0_10c(x, *(int *)(actor + 0xc), z, shared,
                            zero, count, zero, zero);
    }
}

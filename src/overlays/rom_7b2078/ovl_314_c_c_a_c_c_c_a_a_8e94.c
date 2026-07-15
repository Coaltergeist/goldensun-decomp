typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int);
extern void __WaitFrames(int);
extern void __PlaySound(int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, int);
extern void OvlFunc_common0_10c_4(int, int, int, int) asm("OvlFunc_common0_10c");

void OvlFunc_926_2008e94(void)
{
    register u8 *actor asm("r7");
    register unsigned count asm("r6");
    register int wait asm("r5");
    register int shared asm("r8");
    register int vertical_offset asm("r10");
    register int initial_flag asm("r2");
    u8 *result;
    int zero;

    result = __MapActor_GetActor(0x13);
    initial_flag = 0x80000000;
    asm volatile("" : "+r"(initial_flag));
    actor = result;
    count = 0;
    wait = 8;
    shared = initial_flag;
    asm volatile("" : "+r"(actor), "+r"(count), "+r"(wait), "+r"(shared));
    do {
        register int position asm("r3");
        register int delta asm("r4");
        register int flag asm("r2");
        __WaitFrames(wait);
        position = *(int *)(actor + 0x10);
        asm volatile("" : "+r"(position));
        delta = 0x80;
        delta <<= 9;
        asm volatile("" : "+r"(position), "+r"(delta));
        position += delta;
        flag = shared;
        count++;
        *(int *)(actor + 0x10) = position;
        *(int *)(actor + 0x40) = flag;
        wait -= 2;
    } while (count <= 3);
    asm volatile("" : : : "memory");

    zero = 0;
    *(u16 *)(*(u8 **)(actor + 0x50) + 0x1e) = zero;
    {
        register int position asm("r3") = *(int *)(actor + 0x10);
        register int delta asm("r4");
        asm volatile("" : "+r"(position));
        delta = 0xc0;
        delta <<= 13;
        position += delta;
        *(int *)(actor + 0x10) = position;
    }
    *(int *)(actor + 0x40) = 0x80000000;
    __PlaySound(0xe3);

    count = 0xc0;
    {
        register int value asm("r4");
        register int a0 asm("r0");
        register int a1 asm("r1");
        register int a2 asm("r2");
        register int a3 asm("r3");
        a2 = *(int *)(actor + 0x10);
        asm volatile("" : "+r"(count), "+r"(a2));
        value = 0x3333;
        asm volatile("" : "+r"(count), "+r"(a2), "+r"(value));
        count <<= 12;
        a0 = *(int *)(actor + 8);
        a1 = *(int *)(actor + 0xc);
        a2 += count;
        a3 = 0xffff3334;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2), "+r"(a3),
                           "+r"(value));
        asm volatile(
            "str %1, [sp]\n"
            "str %2, [sp, #4]\n"
            "str %1, [sp, #8]\n"
            "str %1, [sp, #12]\n"
            "mov %0, %2"
            : "=r"(shared) : "r"(zero), "r"(value) : "memory");
        OvlFunc_common0_10c_4(a0, a1, a2, a3);
    }
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + count, 0xcccc,
                        zero, shared, zero, zero);

    {
        register int x asm("r0") = *(int *)(actor + 8);
        register int z asm("r2");
        register int offset asm("r3");
        asm volatile("" : "+r"(x));
        z = 0xfffa0000;
        asm volatile("" : "+r"(x), "+r"(z));
        offset = 0xfff80000;
        asm volatile("" : "+r"(x), "+r"(z), "+r"(offset));
        x += z;
        z = *(int *)(actor + 0x10);
        vertical_offset = offset;
        count = 0x80;
        z += vertical_offset;
        count <<= 9;
        OvlFunc_common0_10c(x, *(int *)(actor + 0xc), z, shared,
                            zero, count, zero, zero);
    }
    {
        register int x asm("r0") = *(int *)(actor + 8);
        register int z asm("r2") = *(int *)(actor + 0x10);
        register int delta asm("r4");
        asm volatile("" : "+r"(x), "+r"(z));
        delta = 0xc0;
        delta <<= 11;
        asm volatile("" : "+r"(x), "+r"(z), "+r"(delta));
        x += delta;
        z += vertical_offset;
        OvlFunc_common0_10c(x, *(int *)(actor + 0xc), z, shared,
                            zero, count, zero, zero);
    }
}

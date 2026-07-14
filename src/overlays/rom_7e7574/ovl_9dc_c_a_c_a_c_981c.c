typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor();

int OvlFunc_959_200981c(void)
{
    register u8 *first asm("r5") = __MapActor_GetActor();
    register u8 *second asm("r1") = __MapActor_GetActor(0);
    register int raw_y asm("r3") = *(int *)(first + 0x10);
    register int first_y asm("r6");
    register int raw_x asm("r0");
    register int first_x asm("r4");
    register int second_y asm("r2");
    register int difference asm("r3");

    if (raw_y < 0)
        raw_y += 0xfffff;
    raw_x = *(int *)(first + 8);
    first_y = raw_y >> 20;
    if (raw_x < 0)
        raw_x += 0xfffff;
    second_y = *(int *)(second + 0x10);
    first_x = raw_x >> 20;
    if (second_y < 0)
        second_y += 0xfffff;
    raw_x = *(int *)(second + 8);
    difference = second_y >> 20;
    if (raw_x < 0)
        raw_x += 0xfffff;
    difference = first_y - difference;
    difference += 6;
    raw_x >>= 20;

    __asm__ volatile (
        "cmp %1, #12\n\t"
        "bhi 1f\n\t"
        "sub %1, %2, #1\n\t"
        "cmp %1, %0\n\t"
        "bge 1f\n\t"
        "add %1, %2, #1\n\t"
        "cmp %1, %0\n\t"
        "ble 1f\n\t"
        "mov %0, #1\n\t"
        "b 2f\n"
        "1:\n\t"
        "mov %0, #0\n"
        "2:"
        : "+r" (raw_x), "+r" (difference)
        : "r" (first_x) : "cc");
    return raw_x;
}

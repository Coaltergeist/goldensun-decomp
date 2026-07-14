typedef unsigned char u8;

extern u8 *__MapActor_GetActor(void);
extern u8 *__Func_8093554(void);

int OvlFunc_959_2009980(void)
{
    register u8 *first asm("r5") = __MapActor_GetActor();
    register u8 *second asm("r2") = __Func_8093554();
    register int raw_x asm("r3") = *(int *)(first + 8);
    register int first_x asm("r4");
    register int raw_y asm("r0");
    register int first_y asm("r1");
    register int dx asm("r3");
    register int dy asm("r0");

    if (raw_x < 0)
        raw_x += 0xfffff;
    raw_y = *(int *)(first + 0x10);
    first_x = raw_x >> 20;
    if (raw_y < 0)
        raw_y += 0xfffff;
    raw_x = *(int *)(second + 8);
    first_y = raw_y >> 20;
    if (raw_x < 0)
        raw_x += 0xfffff;
    raw_y = *(int *)(second + 0x10);
    raw_x >>= 20;
    if (raw_y < 0)
        raw_y += 0xfffff;
    dx = first_x - raw_x;
    __asm__ volatile ("" : "+r" (dx));
    raw_y >>= 20;
    if (dx < 0)
        dx = -dx;
    __asm__ volatile ("" : "+r" (dx), "+r" (raw_y));
    dy = first_y - raw_y;
    if (dy < 0)
        dy = -dy;
    __asm__ volatile (
        "cmp %1, #7\n\t"
        "bgt 1f\n\t"
        "cmp %0, #5\n\t"
        "ble 2f\n"
        "1:\n\t"
        "mov %0, #0\n\t"
        "b 3f\n"
        "2:\n\t"
        "mov %0, #1\n"
        "3:"
        : "+r" (dy) : "r" (dx) : "cc");
    return dy;
}

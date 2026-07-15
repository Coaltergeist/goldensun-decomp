typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001f2c;
extern void _Func_801bcd4(int layer, int angle, int kind, int zero);
extern void Func_80a17c4(u8 *object);
extern void *_GetUnit(int id);
extern void _Func_801e8b0(void *unit, void *target, int size, int zero);
extern void _Func_801e7c0(int tile, void *target, int width, int height);

void Func_80a51d0(void)
{
    register u8 *state asm("r7") = iwram_3001f2c;
    register u8 *volatile *object_slot asm("r5");
    register u16 *angle asm("r6");
    register u8 *first_object asm("r3");
    register int initial_angle asm("r1");
    register int object_kind asm("r2");
    u8 *object;
    void *unit;
    void *target;

    __asm__ volatile (
        "mov r3, #0x87\n\t"
        "lsl r3, #2\n\t"
        "add r5, %5, r3\n\t"
        "mov r2, #0xbc\n\t"
        "ldr r3, [r5]\n\t"
        "lsl r2, #1\n\t"
        "add r6, %5, r2\n\t"
        "ldrh r1, [r6]\n\t"
        "ldrb r2, [r3, #0xe]"
        : "=r" (object_slot), "=r" (angle), "=r" (first_object),
          "=r" (initial_angle), "=r" (object_kind)
        : "r" (state));
    _Func_801bcd4(2, initial_angle, object_kind, 0);
    object = *object_slot;
    object[5] = 1;
    object = *object_slot;
    __asm__ volatile ("mov r3, #0x70\n\tstrh r3, [%0, #6]"
                      :: "r" (object) : "r3", "memory");
    object = *object_slot;
    __asm__ volatile ("mov r3, #8\n\tstrh r3, [%0, #8]"
                      :: "r" (object) : "r3", "memory");
    Func_80a17c4(*object_slot);

    unit = _GetUnit(state[0x21a]);
    target = *(void **)(state + 0x10c);
    _Func_801e8b0(unit, target, 0x10, 0);
    {
        register int tile asm("r0");
        register void *destination asm("r1");
        __asm__ volatile (
            "ldrh r3, [%2]\n\t"
            "ldr r0, =0x1ff\n\t"
            "and r0, r3\n\t"
            "ldr r3, =0x182\n\t"
            "ldr r1, [%3]\n\t"
            "add r0, r3"
            : "=r" (tile), "=r" (destination)
            : "r" (angle), "r" (state + 0x10c)
            : "r3", "memory");
        _Func_801e7c0(tile, destination, 0x10, 8);
    }
}

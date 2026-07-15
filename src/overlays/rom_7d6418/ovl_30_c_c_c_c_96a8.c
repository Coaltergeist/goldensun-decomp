typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;

typedef struct Record951 {
    s32 x;
    s32 z;
    s32 y;
    u16 value;
    u16 zero0e;
    u16 zero10;
    u16 zero12;
    u16 zero14;
    u16 pad16;
} Record951;

extern u8 L205a[] asm("OvlFunc_951_XCoords");
extern u8 L205e[] asm("OvlFunc_951_YCoords");
extern u16 L2062[] asm("OvlFunc_951_Values");
extern u8 L2070[] asm("OvlFunc_951_State");
extern Record951 L20d0[] asm("OvlFunc_951_Records");
extern u8 *__MapActor_GetActor(s32 actorId);
extern void __Actor_SetAnim(u8 *actor, s32 animation);
extern void __StartTask(void (*callback)(void), s32 priority);
extern void OvlFunc_951_2008e5c(void);

void OvlFunc_951_20096a8(void)
{
    register u8 *state asm("r0") = L2070;
    register u8 *xs asm("r6") = L205a;
    register Record951 *record asm("r2") = L20d0;
    register u16 *values asm("r5") = L2062;
    register u8 *ys asm("r4") = L205e;
    register s32 count asm("r7") = 0;
    register s32 zero asm("r1") = 0;

    do {
        record->x = *xs << 16;
        record->y = *ys << 16;
        {
            register u16 value asm("r3") = *values;
            asm volatile("" : "+r" (value));
            count++;
            record->z = zero;
            asm volatile("" : "+r" (value) : : "memory");
            record->value = value;
            asm volatile(
                "strh r1, [r2, #0xe]\n\t"
                "strh r1, [r2, #0x10]\n\t"
                "strh r1, [r2, #0x12]\n\t"
                "strh r1, [r2, #0x14]"
                : : "r" (zero), "r" (record) : "memory");
        }
        xs++;
        ys++;
        values++;
        record++;
    } while (count != 4);

    *(s32 *)(state + 4) = 0xffe20000;
    *(s32 *)(state + 8) = 0;
    *(s32 *)(state + 0xc) = 0x640000;
    *(s32 *)(state + 0x40) = 0;
    *(s32 *)(state + 0x44) = 0;
    *(s32 *)(state + 0x48) = 0;
    *(s32 *)(state + 0x4c) = 0;
    __Actor_SetAnim(__MapActor_GetActor(0x14), 2);
    __Actor_SetAnim(__MapActor_GetActor(0x15), 2);
    {
        register s32 priority asm("r1") = 0xc83;
        register void (*callback)(void) asm("r0");
        asm volatile("" : "+r" (priority));
        callback = OvlFunc_951_2008e5c;
        __StartTask(callback, priority);
    }
}

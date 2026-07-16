extern void __Func_8092adc(int actor, int value, int arg);

#define SET_ACTOR_VALUE(actor_value, high_byte)                         \
    do {                                                               \
        register int value __asm__("r1") = (high_byte);                \
        register int actor __asm__("r0") = (actor_value);              \
        __asm__ volatile ("" : : "r" (value), "r" (actor));           \
        value <<= 8;                                                    \
        __Func_8092adc(actor, value, 0);                                \
    } while (0)

void OvlFunc_909_2009958(void)
{
    SET_ACTOR_VALUE(1, 0xe0);
    SET_ACTOR_VALUE(2, 0xa0);
    SET_ACTOR_VALUE(3, 0x80);
}


void OvlFunc_909_2009984(void)
{
    SET_ACTOR_VALUE(1, 0xc0);
    SET_ACTOR_VALUE(2, 0xc0);
    SET_ACTOR_VALUE(3, 0xa0);
}

extern unsigned int iwram_3001e70;

unsigned int OvlFunc_881_20082f0(unsigned char *actor)
{
    register unsigned int *base_ptr asm("r3") = &iwram_3001e70;
    unsigned int base;
    volatile unsigned char *flag_ptr;
    unsigned short *sprite;
    register unsigned int flag asm("r2");
    register unsigned int enabled_flag asm("r3");
    register unsigned int sprite_index asm("r2");
    register unsigned short *sprite_value_ptr asm("r3");
    register unsigned int sprite_value asm("r3");

    sprite = *(unsigned short **)(actor + 0x50);
    flag_ptr = actor + 0x59;
    flag = *flag_ptr;
    base = *base_ptr;
    enabled_flag = flag | 1;
    sprite_index = 0x8d;
    sprite_index <<= 1;
    /* Keep the flag write after the complete index calculation. */
    asm volatile("" : "+r" (sprite_index) : : "memory");
    *flag_ptr = enabled_flag;
    sprite_value_ptr = (unsigned short *)(base + sprite_index);
    /* Materialize the source address before loading its value. */
    asm("" : "+r" (sprite_value_ptr));
    sprite_value = *sprite_value_ptr;
    sprite[0xf] = sprite_value;
    return 1;
}

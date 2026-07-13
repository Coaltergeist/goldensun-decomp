extern unsigned char *iwram_3001e70;

unsigned int OvlFunc_881_20082cc(unsigned char *actor)
{
    register unsigned char **sprite_table_slot asm("r3");
    register unsigned int sprite_index asm("r1");
    register unsigned char *sprite_entry asm("r2");
    register unsigned char *sprite asm("r3");
    register unsigned int sprite_value asm("r2");
    register unsigned int zero asm("r1");

    asm volatile("ldr %0, .Liwram_82cc" : "=r" (sprite_table_slot));
    sprite_index = 0x8d;
    asm volatile("" : "+r" (sprite_index) : : "memory");
    sprite_entry = *sprite_table_slot;
    asm volatile("" : "+r" (sprite_entry) : : "memory");
    sprite_index <<= 1;
    sprite_entry += sprite_index;
    sprite = *(unsigned char **)(actor + 0x50);
    asm volatile("" : "+r" (sprite) : : "memory");
    sprite_value = *(unsigned short *)sprite_entry;
    asm("" : "+r" (sprite_value));
    asm volatile("ldr %0, .Lzero_82cc" : "=r" (zero));
    *(unsigned short *)(sprite + 0x1e) = sprite_value;
    sprite[0x26] = zero;
    return 1;
}

asm(
    ".align 2, 0\n"
    ".Lzero_82cc:\n"
    ".word 0\n"
    ".Liwram_82cc:\n"
    ".word iwram_3001e70\n"
);

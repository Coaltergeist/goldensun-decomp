extern unsigned char *__MapActor_GetActor(int actor);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern unsigned char *iwram_3001ebc;

void OvlFunc_939_2008ac4(void)
{
    register int flag asm("r0");
    register int adjustment asm("r2");
    int z = *(int *)(__MapActor_GetActor(0) + 0x10);
    int tile;

    if (z < 0) {
        adjustment = 0xfffff;
        asm volatile("" : "+r" (adjustment));
        z += adjustment;
    }
    flag = 0x243;
    asm volatile("" : "+r" (flag), "+r" (z));
    tile = z >> 20;
    if (!__GetFlag(flag) && tile == 0xa) {
        register int set_flag asm("r0") = 0x243;
        register unsigned char **state_pointer asm("r3");
        register int state_offset asm("r2");
        register int value asm("r2");
        unsigned char *state;

        asm volatile("" : "+r" (set_flag));
        __SetFlag(set_flag);
        state_pointer = &iwram_3001ebc;
        state_offset = 0xb6;
        asm volatile("" : "+r" (state_pointer), "+r" (state_offset));
        state = *state_pointer;
        state_offset <<= 1;
        state += state_offset;
        value = 0x14;
        asm volatile("" : "+r" (value));
        *(unsigned short *)state = value;
    }
}

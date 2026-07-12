extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];
extern unsigned char Value_69[] asm("0x69");
extern void __ClearFlag(int flag);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(void *actor, int flags);

int OvlFunc_940_20083dc(void) {
    register unsigned char *state asm("r5");
    register int map asm("r6");
    register unsigned int temp asm("r3");
    register unsigned int offset1 asm("r1");
    register unsigned int value asm("r2");

    temp = (unsigned int)iwram_3001ebc;
    asm volatile("" : "+r"(temp));
    offset1 = 0xe0;
    asm volatile("" : "+r"(temp), "+r"(offset1));
    temp = *(unsigned int *)temp;
    asm volatile("" : "+r"(temp), "+r"(offset1));
    offset1 <<= 1;
    asm volatile("" : "+r"(temp), "+r"(offset1));
    value = 0x209;
    asm volatile("" : "+r"(temp), "+r"(offset1), "+r"(value));
    temp += offset1;
    asm volatile("" : "+r"(temp), "+r"(value));
    state = gState;
    asm volatile("" : "+r"(state), "+r"(temp), "+r"(value));
    *(unsigned int *)temp = value;
    value -= 0x47;
    asm volatile("" : "+r"(state), "+r"(value));
    temp = (unsigned int)(state + value);
    asm volatile("" : "+r"(temp));
    offset1 = 0;
    asm volatile("" : "+r"(temp), "+r"(offset1));
    map = *(short *)(temp + offset1);
    asm volatile("" : "+r"(state), "+r"(map));
    if (map == 10) {
        __ClearFlag(0x12f);
        offset1 = 0xe2;
        asm volatile("" : "+r"(state), "+r"(offset1));
        value = (unsigned int)Value_69;
        asm volatile("" : "+r"(state), "+r"(offset1), "+r"(value));
        offset1 <<= 1;
        asm volatile("" : "+r"(state), "+r"(offset1), "+r"(value));
        temp = (unsigned int)(state + offset1);
        asm volatile("" : "+r"(temp), "+r"(value));
        *(unsigned short *)temp = value;
        value = 0xe3;
        asm volatile("" : "+r"(state), "+r"(value));
        value <<= 1;
        asm volatile("" : "+r"(state), "+r"(value));
        temp = (unsigned int)(state + value);
        asm volatile("" : "+r"(temp), "+r"(map));
        *(unsigned short *)temp = map;
    }
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x19), 0);
    return 0;
}

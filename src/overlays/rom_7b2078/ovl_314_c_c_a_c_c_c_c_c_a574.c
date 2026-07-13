extern short gState[];
extern unsigned char path_4b90[] asm(".L4b90");
extern unsigned char path_5184[] asm(".L5184");
extern unsigned char path_4d40[] asm(".L4d40");

asm(".set map_id_3c, 0x3c");
extern unsigned char map_id_3c[];

void *OvlFunc_926_200a574(void)
{
    register short *state asm("r1") = gState;
    register int index asm("r0") = 0xe0;
    register int value asm("r2");
    register short *entry asm("r3");

    asm volatile("" : "+r"(state), "+r"(index));
    index <<= 1;
    entry = (short *)((unsigned char *)state + index);
    asm volatile("" : "+r"(entry));
    index = 0;
    asm volatile("" : "+r"(index));
    value = *(short *)((unsigned char *)entry + index);
    if (value == (int)map_id_3c)
        return path_4b90;
    {
        register int next asm("r2") = 0xe1;
        register int next_value asm("r3");

        asm volatile("" : "+r"(next));
        next <<= 1;
        entry = (short *)((unsigned char *)state + next);
        asm volatile("" : "+r"(entry));
        index = 0;
        asm volatile("" : "+r"(index));
        next_value = *(short *)((unsigned char *)entry + index);
        if (next_value == 3)
            return path_5184;
    }
    return path_4d40;
}

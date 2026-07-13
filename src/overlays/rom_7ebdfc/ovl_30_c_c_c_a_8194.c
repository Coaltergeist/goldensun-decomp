extern unsigned char iwram_3001ebc[];
extern short OvlEffectPosition_961[] asm(".L5d0");
extern unsigned char OvlEffectScript_8194[] asm(".L5fe");
extern void __PlaySound(int sound_id);
extern void __Func_8010560(void *script, int x, int y);
extern void __Func_80922c4(int x, int y, int z);
extern void __Func_8091e9c(int map_id);

void OvlFunc_961_2008194(void)
{
    register unsigned char *state_ref asm("r8");
    register int map_id asm("r10");
    register unsigned int effect_x asm("r6");
    register unsigned int effect_y asm("r5");
    register unsigned char *state_address asm("r1") = iwram_3001ebc;
    register unsigned char *state asm("r3");
    register int offset asm("r2");

    asm volatile("" : "+r"(state_address));
    offset = 0xb6;
    asm volatile("" : "+r"(state_address), "+r"(offset));
    state = *(unsigned char **)state_address;
    offset <<= 1;
    state += offset;
    state_ref = state_address;
    offset = 0;
    map_id = *(short *)(state + offset);
    effect_x = OvlEffectPosition_961[map_id * 2];
    effect_y = OvlEffectPosition_961[map_id * 2 + 1];
    asm volatile("" : "+r"(state_ref), "+r"(map_id),
                 "+r"(effect_x), "+r"(effect_y));

    {
        register int sound_id asm("r0");

        effect_x <<= 16;
        asm volatile("" : "+r"(effect_x));
        effect_y <<= 16;
        asm volatile("" : "+r"(effect_x), "+r"(effect_y));
        sound_id = 0x9e;
        asm volatile("" : "+r"(sound_id), "+r"(effect_x),
                     "+r"(effect_y));
        effect_x >>= 16;
        asm volatile("" : "+r"(sound_id), "+r"(effect_x),
                     "+r"(effect_y));
        effect_y >>= 16;
        asm volatile("" : "+r"(sound_id), "+r"(effect_x),
                     "+r"(effect_y));
        __PlaySound(sound_id);
    }
    {
        register void *script asm("r0");
        register int x asm("r1");
        register int y asm("r2");

        x = effect_x;
        asm volatile("" : "+r"(x));
        y = effect_y;
        asm volatile("" : "+r"(x), "+r"(y));
        script = OvlEffectScript_8194;
        asm volatile("" : "+r"(script), "+r"(x), "+r"(y));
        __Func_8010560(script, x, y);
    }
    {
        register int x asm("r0");
        register int y asm("r1");
        register int z asm("r2");

        z = 0x10;
        asm volatile("" : "+r"(z));
        x = 0;
        asm volatile("" : "+r"(x), "+r"(z));
        y = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        z = -z;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        __Func_80922c4(x, y, z);
    }
    {
        register unsigned char *state_pointer asm("r2") = state_ref;
        register int field_offset asm("r1");

        asm volatile("" : "+r"(state_pointer));
        state = *(unsigned char **)state_pointer;
        field_offset = 0xe4;
        asm volatile("" : "+r"(field_offset), "+r"(state));
        field_offset <<= 1;
        state += field_offset;
        asm volatile("" : "+r"(field_offset), "+r"(state));
        *(int *)state = 0x10;
    }
    __Func_8091e9c(map_id);
}

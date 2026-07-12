extern unsigned char gState[];
extern unsigned char Script_2bd8[] asm(".L2bd8");
extern unsigned char Script_2d1c[] asm(".L2d1c");
extern unsigned char Script_2e24[] asm(".L2e24");
extern unsigned char Script_3058[] asm(".L3058");
extern unsigned char Script_3130[] asm(".L3130");
extern unsigned char Script_3184[] asm(".L3184");
extern unsigned char Script_2bcc[] asm(".L2bcc");
extern unsigned char gScript_911__0200ac08[];
extern unsigned char Value_34[] asm("0x34");
extern unsigned char Value_3e[] asm("0x3e");
extern unsigned char Value_3f[] asm("0x3f");
extern unsigned char Value_40[] asm("0x40");
extern unsigned char Value_41[] asm("0x41");
extern unsigned char Value_42[] asm("0x42");
extern unsigned char Value_43[] asm("0x43");
extern unsigned char *__CreateActor(int actor, int x, int y, int z);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_80929d8(unsigned char *actor, int value);

unsigned char *OvlFunc_922_2008ed8(int x, int y, int z, int actorId)
{
    unsigned char *actor;

    actor = __CreateActor(actorId, x, y, z);
    if (actor != 0) {
        unsigned char *sprite = *(unsigned char **)(actor + 0x50);
        register int mask asm("r3");
        register unsigned int value asm("r2");

        mask = 13;
        asm volatile("" : "+r"(mask));
        value = sprite[9];
        asm volatile("" : "+r"(mask), "+r"(value));
        mask = -mask;
        mask &= value;
        value = 4;
        mask |= value;
        {
            register unsigned char *flag asm("r2") = actor;

            asm volatile("" : "+r"(flag), "+r"(mask));
            flag += 0x55;
            asm volatile("" : "+r"(flag), "+r"(mask));
            sprite[9] = mask;
            mask = 0;
            *flag = mask;
        }
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8(actor, 0xf);
        {
            register unsigned char *field asm("r1") = actor;
            register unsigned int oldValue asm("r2");
            register int bit asm("r3");

            asm volatile("" : "+r"(field));
            field += 0x23;
            oldValue = *field;
            asm volatile("" : "+r"(field), "+r"(oldValue));
            bit = 2;
            asm volatile("" : "+r"(field), "+r"(oldValue), "+r"(bit));
            bit |= oldValue;
            *field = bit;
        }
        return actor;
    }
    return 0;
}

unsigned char *OvlFunc_922_2008f30(void)
{
    register unsigned char *state asm("r3");
    register int offset asm("r1");
    register int map asm("r2");

    state = gState;
    asm volatile("" : "+r"(state));
    offset = 0xe0;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    state += offset;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset = 0;
    asm volatile("" : "+r"(state), "+r"(offset));
    map = *(short *)(state + offset);
    asm volatile("" : "+r"(map));

    if (map == (int)Value_34)
        return Script_2bd8;
    if (map == (int)Value_3e)
        return gScript_911__0200ac08;
    if (map == (int)Value_3f)
        return Script_2d1c;
    if (map == (int)Value_40)
        return Script_2e24;
    if (map == (int)Value_41)
        return Script_3058;
    if (map == (int)Value_42)
        return Script_3130;
    if (map == (int)Value_43)
        return Script_3184;
    return Script_2bcc;
}

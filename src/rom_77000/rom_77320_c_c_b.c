extern unsigned char *GetUnit(unsigned int unit_id);
extern void UpdateStatBarPercent(unsigned int unit_id);

int ModifyHP(unsigned int unit_id, int amount)
{
    unsigned char *unit = GetUnit(unit_id);
    register int value asm("r3");
    register int maximum asm("r2");
    register int clamped asm("r1");

    value = *(short *)(unit + 0x38);
    maximum = *(short *)(unit + 0x34);
    value += amount;

    clamped = maximum;
    if (value > maximum)
        goto store_hp;
    clamped = 0;
    if (value < 0)
        goto store_hp;
    clamped = value;

store_hp:
    *(short *)(unit + 0x38) = clamped;
    UpdateStatBarPercent(unit_id);
    return *(short *)(unit + 0x38);
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size ModifyHP, .-ModifyHP");

int ModifyPP(unsigned int unit_id, int amount)
{
    unsigned char *unit = GetUnit(unit_id);
    register int value asm("r3");
    register int maximum asm("r2");
    register int clamped asm("r1");

    value = *(short *)(unit + 0x3a);
    maximum = *(short *)(unit + 0x36);
    value += amount;

    clamped = maximum;
    if (value > maximum)
        goto store_pp;
    clamped = 0;
    if (value < 0)
        goto store_pp;
    clamped = value;

store_pp:
    *(short *)(unit + 0x3a) = clamped;
    UpdateStatBarPercent(unit_id);
    return *(short *)(unit + 0x3a);
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size ModifyPP, .-ModifyPP");

#include "unit.h"

extern void UpdateStatBarPercent(unsigned int unit_id);

int ModifyHP(unsigned int unit_id, int amount)
{
    struct Unit *unit = GetUnit(unit_id);
    register int value asm("r3");
    register int maximum asm("r2");
    register int clamped asm("r1");

    value = unit->hp;
    maximum = unit->maxHP;
    value += amount;

    clamped = maximum;
    if (value > maximum)
        goto store_hp;
    clamped = 0;
    if (value < 0)
        goto store_hp;
    clamped = value;

store_hp:
    unit->hp = clamped;
    UpdateStatBarPercent(unit_id);
    return unit->hp;
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size ModifyHP, .-ModifyHP");

int ModifyPP(unsigned int unit_id, int amount)
{
    struct Unit *unit = GetUnit(unit_id);
    register int value asm("r3");
    register int maximum asm("r2");
    register int clamped asm("r1");

    value = unit->pp;
    maximum = unit->maxPP;
    value += amount;

    clamped = maximum;
    if (value > maximum)
        goto store_pp;
    clamped = 0;
    if (value < 0)
        goto store_pp;
    clamped = value;

store_pp:
    unit->pp = clamped;
    UpdateStatBarPercent(unit_id);
    return unit->pp;
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size ModifyPP, .-ModifyPP");

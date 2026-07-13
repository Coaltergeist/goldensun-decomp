#include "unit.h"

extern unsigned char *GetEnemyInfo(unsigned int enemy_id);
extern unsigned char EnemyTable[] asm(".L88e38");

int Func_80798b4(struct Unit *unit)
{
    unsigned char *enemy = GetEnemyInfo(unit->unitType);
    register unsigned int kind asm("r1");
    register unsigned int offset asm("r2");
    register unsigned char *table asm("r3");

    enemy += 0x34;
    kind = *enemy;
    if (kind > 0x2b)
        kind = 0;
    offset = kind << 1;
    table = EnemyTable;
    __asm__ volatile ("" : "+r" (offset), "+r" (table));
    offset += kind;
    offset <<= 3;
    return *(int *)(table + offset);
}

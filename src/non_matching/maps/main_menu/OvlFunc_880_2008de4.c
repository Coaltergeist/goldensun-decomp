struct Menu880_Stats {
    short hp, pp;
    unsigned short percentHP, percentPP;
    unsigned short attack, defense, agility;
    unsigned char luck, turns;
};
struct Menu880_Unit {
    unsigned char name[15], level;
    struct Menu880_Stats base;
    unsigned char otherStats[0xd8 - 0x20];
    unsigned short items[16];
    unsigned int djinn[4];
};
struct Menu880_State { unsigned char beforeMoney[0x10]; union { unsigned int money; unsigned short halves[2]; } funds; };
extern struct Menu880_State menu880State asm("gState");
extern int menu880UnitIDs[4] asm(".L16c0");
extern unsigned short gOvl_020096d0[6];
extern unsigned short menu880SpecialItems[8] asm(".L16dc");
extern unsigned short menu880QuantityItems[23] asm(".L16ec");
extern unsigned char *__GetUnit(unsigned int);
extern unsigned char *__GetItemInfo(unsigned int);
extern int __GetFlag(unsigned int);

int OvlFunc_880_2008de4(int unused, int kind, unsigned char *output)
{
    unsigned int size = 11;
    unsigned int i;
    unsigned int levels, djinn;
    unsigned char itemFlags, eventFlags;
    unsigned int packed[8];
    unsigned int *stats;
    struct Menu880_Unit *unit;
    struct Menu880_Stats *base;
    int offset, shift;
    switch (kind) {
    case 0: size = 173; break;
    case 1: size = 39; break;
    case 2: size = 9; break;
    }
    for (i = 0; i != size; ++i) output[i] = 0;
    levels = 0; djinn = 0; itemFlags = 0; eventFlags = 0;
    for (i = 0; i != 8; ++i) packed[i] = 0;
    for (i = 0; i != 6; ++i) {
        if (__GetFlag(gOvl_020096d0[i])) eventFlags |= 1 << i;
    }
    stats = packed;
    for (i = 0; i != 4; ++i) {
        unsigned int j;
        unit = (struct Menu880_Unit *)__GetUnit(menu880UnitIDs[i]);
        base = &unit->base;
        if (base->hp > 1999) base->hp = 1999;
        if (base->hp < 0) base->hp = 0;
        if (base->pp > 1999) base->pp = 1999;
        if (base->pp < 0) base->pp = 0;
        if (base->attack > 999) base->attack = 999;
        if (base->defense > 999) base->defense = 999;
        if (base->agility > 999) base->agility = 999;
        if (base->luck > 99) base->luck = 99;
        stats[0] = ((unsigned int)base->hp << 21) | ((unsigned int)base->pp << 10) | base->attack;
        stats[1] = ((unsigned int)base->defense << 22) | ((unsigned int)base->agility << 12) | ((unsigned int)base->luck << 4);
        if (unit->level > 99) unit->level = 99;
        if (unit->level == 0) unit->level = 1;
        levels |= (unsigned int)unit->level << (7 * i);
        for (j = 0; j != 4; ++j) djinn += unit->djinn[j] << (7 * j);
        for (j = 0; j != 15; ++j) {
            unsigned int k;
            unsigned int item = 0x1ff & unit->items[j];
            for (k = 0; k != 8; ++k) {
                if (item == menu880SpecialItems[k]) itemFlags |= 1 << k;
            }
        }
        stats += 2;
    }
    if (kind == 0) {
        offset = 39;
        shift = 0;
        for (i = 0; i != 4; ++i) {
            struct Menu880_Unit *unit = (struct Menu880_Unit *)__GetUnit(menu880UnitIDs[i]);
            int j;
            for (j = 0; j != 15; ++j) {
                int item;
                __GetItemInfo(unit->items[j]);
                item = 0x1ff & unit->items[j];
                output[offset] += item >> (shift + 1);
                output[offset + 1] += item << (7 - shift);
                ++shift;
                ++offset;
                if (shift == 7) { shift = 0; ++offset; }
            }
        }
        offset = 107;
        shift = -1;
        for (i = 0; i != 4; ++i) {
            struct Menu880_Unit *unit = (struct Menu880_Unit *)__GetUnit(menu880UnitIDs[i]);
            unsigned int j;
            for (j = 0; j != 23; ++j) {
                unsigned int target = menu880QuantityItems[j];
                unsigned int k, amount = 0;
                int quantity;
                for (k = 0; k != 15; ++k) {
                    unsigned int item = unit->items[k];
                    if ((item & 0x1ff) == target) amount = (0xf800 & item) >> 11;
                }
                quantity = (unsigned short)amount;
                if (shift < 0) {
                    output[offset] += quantity >> -shift;
                    ++offset;
                    shift += 8;
                }
                output[offset] += quantity << shift;
                shift -= 5;
                if (shift == -5) { ++offset; shift = 3; }
            }
        }
        output[165] = menu880State.funds.halves[1];
        output[166] = menu880State.funds.money >> 8;
        output[167] = menu880State.funds.money;
    }
    if (kind != 2) {
        int start = kind ? 9 : 8;
        unsigned char *dst = &output[start];
        stats = packed;
        for (i = 0; i != 2; ++i) {
            unsigned int a = stats[0], b, c, d;
            dst[0] = a >> 24; dst[1] = a >> 16; dst[2] = a >> 8; dst[3] = a;
            b = stats[1];
            dst[4] = b >> 24; dst[5] = b >> 16; dst[6] = b >> 8; dst[7] = b;
            c = stats[2];
            dst[7] |= c >> 28; dst[8] = c >> 20; dst[9] = c >> 12; dst[10] = c >> 4; dst[11] = c << 4;
            d = stats[3];
            dst[11] |= d >> 28; dst[12] = d >> 20; dst[13] = d >> 12; dst[14] = d >> 4;
            stats += 4; dst += 15;
        }
    }
    output[0] = levels;
    output[1] = levels >> 8;
    output[2] = levels >> 16;
    output[3] = ((levels >> 20) & 0xf0) | (djinn & 15);
    output[4] = djinn >> 4;
    output[5] = djinn >> 12;
    output[6] = djinn >> 20;
    output[7] = eventFlags;
    if (kind != 0) output[8] = itemFlags;
    return size;
}

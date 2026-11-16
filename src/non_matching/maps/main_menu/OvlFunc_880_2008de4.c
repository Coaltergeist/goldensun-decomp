/*
 * Closest non-matching candidate under GAIA_SRCS (-fstrict-aliasing):
 * 507 vs 509 insns (126 stripped diff lines). All 3 outer loop high/low
 * register allocations, stack spills, mid-function minipool (+0x240), Loop 2
 * shift packing, Loop 4 dst[0..14] stores, and epilogue match.
 * Remaining localized diffs:
 * 1. Loop 1: ldrsh clobber scratches (r6/r0 vs r3/r4); `lsl r0, r6, #3` (`i << 3`)
 *    hoisted above unit->level clamp in target vs after in candidate; itemFlags
 *    inner loop reg order (`item`=r2,`menu880SpecialItems`=r1,`k`=r4 vs r1/r2/r4).
 * 2. Loop 2: `ldrh r3, [r2, r4]; ldr r1, [pc, #IMM]` vs `r1`/`r3` swap; missing
 *    `.short 0x0000` alignment padding before +0x240 pool due to Loop 1 -2B.
 * 3. Loop 3: `lsls r2, r5, #16` before `cmp r6, #0` (leaving `lsrs r1, r2, #16`
 *    in both branches) vs `adds r1, r5, #0` before `cmp` and combine folding `lsrs`
 *    in `< 0`.
 * 4. Loop 4 (`kind != 2` setup): `mov r6, fp; movs r1, #0; adds r0, r6, r3; mov r9, r1`
 *    vs `movs r6, #0; mov r1, fp; mov r9, r6; adds r0, r3, r1` (loop body & tail match).
 */
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
extern struct Menu880_State menu880State __asm__("gState");
extern int menu880UnitIDs[4] __asm__(".L16c0");
extern unsigned short gOvl_020096d0[6];
extern unsigned short menu880SpecialItems[8] __asm__(".L16dc");
extern unsigned short menu880QuantityItems[23] __asm__(".L16ec");
extern unsigned char *__GetUnit(unsigned int);
extern unsigned char *__GetItemInfo(unsigned int);
extern int __GetFlag(int);

int OvlFunc_880_2008de4(int unused, int kind, unsigned char *output)
{
    unsigned int size = 11;
    unsigned int i;
    unsigned int levels;
    unsigned int djinn;
    unsigned char itemFlags;
    unsigned char eventFlags;
    unsigned int packed[8];
    unsigned int *stats;
    struct Menu880_Stats *base;

    switch (kind) {
    case 0:
        size = 173;
        break;
    case 1:
        size = 39;
        break;
    case 2:
        size = 9;
        break;
    }

    for (i = 0; i != size; ++i)
        output[i] = 0;

    levels = 0;
    djinn = 0;
    itemFlags = 0;
    eventFlags = 0;

    for (i = 0; i != 8; ++i)
        packed[i] = 0;

    for (i = 0; i != 6; ++i) {
        if (__GetFlag(gOvl_020096d0[i]))
            eventFlags |= 1 << i;
    }

    stats = packed;
    for (i = 0; i != 4; ++i) {
        unsigned int j;
        struct Menu880_Unit *unit = (struct Menu880_Unit *)__GetUnit(menu880UnitIDs[i]);

        base = &unit->base;
        if (base->hp > 1999)
            base->hp = 1999;
        if (base->hp < 0)
            base->hp = 0;
        if (base->pp > 1999)
            base->pp = 1999;
        if (base->pp < 0)
            base->pp = 0;
        if (base->attack > 999)
            base->attack = 999;
        if (base->defense > 999)
            base->defense = 999;
        if (base->agility > 999)
            base->agility = 999;
        if (base->luck > 99)
            base->luck = 99;

        stats[0] = ((((unsigned int)base->hp) << 21) | (((unsigned int)base->pp) << 10)) | base->attack;
        stats[1] = ((((unsigned int)base->defense) << 22) | (((unsigned int)base->agility) << 12)) | (((unsigned int)base->luck) << 4);

        if (unit->level > 99)
            unit->level = 99;
        if (unit->level == 0)
            unit->level = 1;
        levels |= ((unsigned int)unit->level) << (7 * i);

        for (j = 0; j != 4; ++j)
            djinn += unit->djinn[j] << (7 * j);

        for (j = 0; j != 15; ++j) {
            unsigned int k;
            unsigned int item = 0x1ff & unit->items[j];

            for (k = 0; k != 8; ++k) {
                if (item == menu880SpecialItems[k]) {
                    item = 1 << k;
                    itemFlags |= item;
                }
            }
        }
        stats += 2;
    }

    if (kind == 0) {
        int offset = 39;
        int k;
        int shift = 0;

        for (i = 0; i != 4; ++i) {
            struct Menu880_Unit *unit = (struct Menu880_Unit *)__GetUnit(menu880UnitIDs[i]);

            for (k = 0; k != 15; ++k) {
                int item;

                __GetItemInfo(unit->items[k]);
                item = 0x1ff & unit->items[k];
                output[offset] += item >> (shift + 1);
                output[offset + 1] += ((short)item) << (7 - shift);
                ++shift;
                ++offset;
                if (shift == 7) {
                    shift = 0;
                    ++offset;
                }
            }
        }

        offset = 107;
        shift = -1;
        for (i = 0; i != 4; ++i) {
            unsigned int j;
            struct Menu880_Unit *unit = (struct Menu880_Unit *)__GetUnit(menu880UnitIDs[i]);

            for (j = 0; j != 23; ++j) {
                int amount = 0;
                unsigned short quantity;

                for (k = 0; k != 15; ++k) {
                    if ((0x1ff & unit->items[k]) == menu880QuantityItems[j])
                        amount = (0xf800 & unit->items[k]) >> 11;
                }

                quantity = amount;
                if (shift < 0) {
                    output[offset] += quantity >> (-shift);
                    ++offset;
                    shift += 8;
                }
                output[offset] += quantity << shift;
                shift -= 5;
                if (shift == -5) {
                    ++offset;
                    shift = 3;
                }
            }
        }

        output[165] = menu880State.funds.halves[1];
        output[166] = menu880State.funds.money >> 8;
        output[167] = menu880State.funds.money;
    }

    if (kind != 2) {
        int start = kind ? 9 : 8;
        unsigned char *dst = output;
        unsigned int *p = packed;

        dst += start;
        for (i = 0; i != 2; ++i) {
            unsigned int a = p[0];
            unsigned int b;
            unsigned int c;
            unsigned int d;

            dst[0] = a >> 24;
            dst[1] = a >> 16;
            dst[2] = a >> 8;
            dst[3] = a;
            b = p[1];
            dst[4] = b >> 24;
            dst[5] = b >> 16;
            dst[6] = b >> 8;
            dst[7] = b;
            c = p[2];
            dst[7] |= c >> 28;
            dst[8] = c >> 20;
            dst[9] = c >> 12;
            dst[10] = c >> 4;
            dst[11] = c << 4;
            d = p[3];
            dst[11] |= d >> 28;
            dst[12] = d >> 20;
            dst[13] = d >> 12;
            dst[14] = d >> 4;
            p += 4;
            dst += 15;
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
    if (kind != 0)
        output[8] = itemFlags;
    return size;
}

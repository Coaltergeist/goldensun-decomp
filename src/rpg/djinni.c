#include "nonmatching.h"
#include "rpg.h"

extern unsigned char *GetUnit(unsigned int unit);
extern void Func_8079ae8();

extern unsigned char gDjinn[] __asm__("gDjinn");

unsigned char *GetDjinniInfo(unsigned int arg0, unsigned int arg1) {
    unsigned int r3;
    r3 = 0;
    if (arg0 <= 3 && arg1 <= 0x13) {
        r3 = arg0 * 20 + arg1;
    }
    return gDjinn + r3 * 12;
}

INCLUDE_ASM("asm/rpg/djinni/Func_807a0f4.s");
int GiveDjinni(unsigned int pc, int element, int index)
{
    struct Unit *u = (struct Unit *)GetUnit(pc);
    u32 bit;

    if (u->numDjinn[element] > 9)
        return -1;
    bit = 1 << index;
    if (u->djinn[element] & bit)
        return -1;
    u->numDjinn[element]++;
    u->djinn[element] |= bit;
    return 0;
}
INCLUDE_ASM("asm/rpg/djinni/Func_807a1f8.s");

unsigned int Func_807a2bc(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned char *r5;
    unsigned int off;
    unsigned int mask;

    r5 = (unsigned char *)GetUnit(arg0);
    off = (arg1 << 2) + 0x108;
    mask = *(unsigned int *)(r5 + off) & (1 << arg2);
    if (mask) {
        return 1;
    }
    return 0;
}

int SetDjinni(int pc, int elem, int djinn)
{
    extern int Func_807a1f8(int, int, int);
    struct Unit *u = (struct Unit *)GetUnit(pc);
    int r = Func_807a1f8(pc, elem, djinn);

    if (r != 0) {
        if (u->djinn[elem] & (1 << djinn))
            u->setDjinn[elem] |= 1 << djinn;
        else
            return 0;
        u->numSetDjinn[elem]++;
        Func_8079ae8(pc);
    }
    return r;
}

unsigned int Func_807a350(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned char *r5;
    unsigned int r6;
    unsigned int r7;
    unsigned int r8;
    unsigned int r10;

    r7 = arg0;
    r6 = arg1;
    r10 = arg2;
    r5 = (unsigned char *)GetUnit(r7);
    r8 = Func_807a2bc(r7, r6, r10);
    if (r8 != 0) {
        unsigned int idx_byte;
        unsigned int idx_word;
        unsigned int mask;

        idx_byte = r6 + 0x11c;
        r5[idx_byte] += 0xff;

        idx_word = (r6 << 2) + 0x108;
        mask = 1 << r10;
        *(unsigned int *)(r5 + idx_word) &= ~mask;

        Func_8079ae8(r7);
    }
    return r8;
}

INCLUDE_ASM("asm/rpg/djinni/Func_807a3a8.s");
INCLUDE_ASM("asm/rpg/djinni/Func_807a458.s");
INCLUDE_ASM("asm/rpg/djinni/Func_807a498.s");
INCLUDE_ASM("asm/rpg/djinni/Func_807a550.s");


unsigned short Func_807a5b0(void) {
    extern unsigned int GetDjinniInfo_0() __asm__("GetDjinniInfo");
    unsigned int ptr = GetDjinniInfo_0();
    return *(unsigned short *)ptr;
}

unsigned int GetNumDjinn(int element) {
    extern int Func_80796c4(unsigned short *buf);
    extern struct Unit *GetUnit_u(unsigned int unit) __asm__("GetUnit");
    unsigned short party[16];
    unsigned int total;
    int count;
    int i;

    total = 0;
    count = Func_80796c4(party);
    for (i = 0; i < count; i++) {
        struct Unit *unit = GetUnit_u(party[i]);
        if (element == -1) {
            total += unit->numDjinn[0];
            total += unit->numDjinn[1];
            total += unit->numDjinn[2];
            total += unit->numDjinn[3];
        } else {
            total += unit->numDjinn[element];
        }
    }
    return total;
}

/* Shared rpg-region rodata pool (djinni tables incl. gDjinn used by
   GetDjinniInfo); trails the region's text in ROM. */
INCLUDE_ASM("asm/rpg/djinni/rom_84a8c.s");

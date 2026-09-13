// fakematch
/* flags.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/flags/GetFlag.s");
INCLUDE_ASM("asm/flags/SetFlag.s");
INCLUDE_ASM("asm/flags/ClearFlag.s");

extern unsigned char gFlags[];

int ToggleFlag(int flagID)
{
    unsigned int bit;
    unsigned int index;
    unsigned char *table;
    int value;

    bit = 1u << (flagID & 7);
    table = gFlags;
    flagID = ((unsigned int)flagID << 20) >> 23;
    index = flagID;
    table[index] ^= bit;
    value = table[index] & bit;
    return (unsigned int)(-value | value) >> 31;
}

unsigned char GetFlagByte(unsigned int id) {
    id = (id << 20) >> 23;
    return gFlags[id];
}
void SetFlagByte(unsigned int id, unsigned char val) {
    id = (id << 20) >> 23;
    gFlags[id] = val;
}
unsigned char IncFlagByte(unsigned int id) {
    id = (id << 20) >> 23;
    if (gFlags[id] <= 0xfe) gFlags[id]++;
    return gFlags[id];
}
unsigned char DecFlagByte(unsigned int id) {
    id = (id << 20) >> 23;
    if (gFlags[id] != 0) gFlags[id]--;
    return gFlags[id];
}
int GetFlagNybble(unsigned int id) {
    unsigned int sh = id & 4;
    int mask = 0xf << sh;
    id = (id << 20) >> 23;
    return (gFlags[id] & mask) >> sh;
}

void SetFlagNybble(int flagID, int value)
{
    unsigned int shift;
    unsigned int mask;
    unsigned int indexBits;
    unsigned int keepMask;
    unsigned char *table;

    mask = 15;
    shift = flagID;
    shift = shift & 4;
    indexBits = (unsigned int)flagID << 20;
    table = gFlags;
    keepMask = ~(mask << shift);
    flagID = indexBits >> 23;
    table[flagID] = (keepMask & table[flagID]) | ((value & mask) << shift);
}

typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e74;
extern u8 gState[];
extern int _GetPartySize(void);
extern u8 *_GetUnit(int unitId);

int Func_80b6a60(u16 *output)
{
    register u16 *cursor asm("r5") = output;
    register int maximum asm("r6") = 4;
    register u8 *party asm("r2");
    volatile u8 *savedParty;
    register int count asm("r7");

    if (iwram_3001e74[0x44] != 0)
        maximum = 3;
    count = _GetPartySize();

    if (count > maximum)
        count = maximum;

    if (count > 0) {
        register int active asm("r8");
        register u8 *partyBase asm("r3") = gState;
        register int partyOffset asm("r1") = 0x1f8;
        party = partyBase + partyOffset;
        asm volatile("" : : "r"(party));
        active = 2;
        maximum = count;
        do {
            int unitId = *party++;
            u8 *unit;
            u8 *unitField;
            register int activeOut asm("r1");
            register int unitOffset asm("r1");
            if (cursor != 0)
                *cursor++ = unitId;
            savedParty = party;
            asm volatile("" : : "m"(savedParty));
            unit = _GetUnit(unitId);
            unitOffset = 0x12a;
            unitField = unit + unitOffset;
            maximum--;
            asm volatile("" : : "r"(maximum));
            activeOut = active;
            *unitField = activeOut;
            asm volatile("" : : "m"(savedParty));
            party = (u8 *)savedParty;
        } while (maximum != 0);
    }

    if (cursor != 0)
        *cursor = 0xff;
    return count;
}

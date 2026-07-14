#include "unit.h"

extern unsigned char gState[];
extern int GetPartySize(void);

int Func_8077348(void)
{
    register int partySize asm("r7");
    register int sum asm("r6");
    int result;
    register int i asm("r5");
    register u8 *ptr asm("r2");
    u8 *ptrSave;
    u8 idx;
    u8 level;
    struct Unit *unit;
    register unsigned int offset asm("r1");
    register unsigned char *base asm("r3");

    partySize = GetPartySize();
    sum = 0;
    result = 0;
    if (partySize != 0) {
        if (sum < partySize) {
            base = gState;
            offset = 0xfc;
            asm volatile("" : "+r"(offset), "+r"(base));
            offset <<= 1;
            ptr = base + offset;
            i = partySize;
            do {
                idx = *ptr;
                ptr++;
                asm volatile("str %1, %0" : "=m"(ptrSave) : "r"(ptr));
                unit = GetUnit(idx);
                level = unit->level;
                i--;
                sum += level;
                asm volatile("ldr %0, %1" : "=r"(ptr) : "m"(ptrSave));
            } while (i != 0);
        }
        result = sum / partySize;
        sum = result;
        asm volatile("" :: "r"(sum));
    }
    return result;
}

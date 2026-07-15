#include "gba/types.h"

extern u8 *iwram_3001e74;
extern u8 *_GetUnit(int);

int Func_80c1ebc(int unitId)
{
    register u8 *state asm("r6") = iwram_3001e74;
    register int count asm("r5") = state[0x40];
    register u8 *unit asm("r12") = _GetUnit(unitId);
    register int index asm("r1");
    register int target asm("r0");
    register int slotOffset asm("r3");

    if (unit[0x129] != 0)
        return;

    target = unit[0x128];
    index = 0;
    if (index < count && *(u16 *)(state + 0x10) != target) {
        register u16 *entry asm("r2") = (u16 *)(state + 0x10);
        do {
            index++;
            if (index >= count)
                break;
            entry++;
        } while (*entry != target);
    }

    if (index != count) {
        index <<= 2;
        slotOffset = index;
        slotOffset += 0x1c;
        if (*(u32 *)(state + slotOffset) != 0) {
            register int length asm("r4") = 0;
            register u8 *text asm("r2") = unit;
            register int bit asm("r0");
            register int charIndex asm("r3");
            register u8 *charBase asm("r2");

            if (*text != 0) {
                do {
                    length++;
                    if (length > 0xd)
                        break;
                    text++;
                } while (*text != 0);
            }
            bit = 0x20;
            if (length > 0) {
                charIndex = length - 1;
                charBase = unit;
                charIndex = charBase[charIndex];
                asm("" : "+r"(charIndex));
                bit = charIndex;
                bit -= 0x31;
            }
            index += 0x1c;
            {
                register u32 flags asm("r3") = *(u32 *)(state + index);
                flags &= ~(1u << bit);
                *(u32 *)(state + index) = flags;
            }
        }
    }
}

#include "gba/types.h"


extern u8 *iwram_3001e8c;
extern void CloseUIBox(void *, int);
extern void WaitFrames(int);

void Func_80197c4(void)
{
    register u8 *state asm("r8") = iwram_3001e8c;
    register u8 *entry asm("r5") = state + 0x620;
    register u8 *box asm("r7") = state + 0x500;
    register int i asm("r6") = 0;
    int allClosed;

    do {
        void *object = *(void **)entry;
        if (object != 0 && *(u16 *)((u8 *)object + 0x16) != 0)
            CloseUIBox(object, 0);
        i++;
        entry += 0x28;
    } while (i != 3);

    do {
        allClosed = 1;
        entry = state + 0x620;
        i = 0;
        do {
            u8 *object = *(u8 **)entry;
            if (object != 0) {
                if (*(u32 *)(object + 0x18) == 0 &&
                    *(u16 *)(object + 0x16) == 0) {
                    *(u32 *)entry = 0;
                } else {
                    allClosed = 0;
                }
            }
            i++;
            entry += 0x28;
        } while (i != 3);
        i = 0;
        if (!allClosed)
            WaitFrames(1);
    } while (!allClosed);

    goto box_check;
box_loop:
        if (*(u16 *)(box + 0x16) != 0)
            CloseUIBox(box, 0);
        box += 0x24;
        i++;
box_check:
    if (i != 8)
        goto box_loop;
}

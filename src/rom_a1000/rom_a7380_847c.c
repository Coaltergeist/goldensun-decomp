#include "gba/types.h"

typedef struct MenuRoot {
    u8 filler0[0x24];
    u16 *box;
} MenuRoot;

extern MenuRoot *iwram_3001f2c;
extern const u8 gMenuWidths_80a847c[];
extern void Func_80a2268(const u16 *, int, int, int, int, int);

void Func_80a847c(int mode, int index, const volatile u8 *entries,
                  unsigned selected)
{
    register unsigned selectedCopy asm("r12") = selected;
    register int y asm("r5");
    register int x asm("r7");
    register int width asm("r6");
    register int found asm("r4");
    register int i asm("r0");
    register MenuRoot *root asm("r14") = iwram_3001f2c;
    register int palette asm("r3");
    register int temp asm("r2");
    register int height asm("r1");

    if (mode == 0) {
        asm volatile(
            "lsl r3, r1, #1\n\t"
            "add r5, r3, #5"
            : "=r"(y)
            : "r"(index)
            : "r3");
        x = 0;
        width = 5;
        found = 0;
        i = 0;
        if (entries[0] == 0)
            goto skipZero;
        if (index == 0) {
            width = gMenuWidths_80a847c[0];
            goto draw;
        }
        do {
            found++;
skipZero:
            do {
                i++;
                if (i > 4)
                    goto draw;
            } while (entries[i] == 0);
        } while (index != found);
        width = gMenuWidths_80a847c[i];
    } else if (index <= 3) {
        y = index;
        x = 5;
        width = 13;
    } else {
        y = index + 4;
        x = 8;
        width = 20;
    }

draw:
    asm volatile(
        "mov r1, #1\n\t"
        "mov r2, r12\n\t"
        "mov r3, r1\n\t"
        "eor r3, r2"
        : "=r"(height), "=r"(temp), "=r"(palette)
        : "r"(selectedCopy));
    temp = -palette;
    temp |= palette;
    temp = (unsigned)temp >> 31;
    palette = 15;
    palette -= temp;
    Func_80a2268(root->box, x, y, width, height, palette);
}

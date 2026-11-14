/*
 * Remaining diff (only +4 bytes across 1,224 bytes; exact stack frame `sub sp, #20`,
 * exact high-register coloring `r8..fp`, and all 4 literal pools matched):
 * In `case 2`, `reload` emits a redundant `mov r3, sl; str r3, [sp, #8]` before `mov r1, sl`
 * for the spilled `sp8` pointer (whereas REF allocates `r5` without storing back to `[sp, #8]`),
 * plus minor `r1`/`r2` scratch-register ties in the command-stream switch and `BLDALPHA` queue write.
 */
#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"
#include "sprite/slot.h"

__asm__(".set __divsi3, _divsi3_RAM");

extern struct SpriteSlot gSpriteSlots[96];

struct C1_ObjAffineSrc {
    short xScale;
    short yScale;
    unsigned short angle;
};

extern unsigned char Lc1_43[] __asm__(".Lc1_43");
extern unsigned char Lc1_10[] __asm__(".Lc1_10");
extern unsigned char Lc1_36[] __asm__(".Lc1_36");
extern unsigned char Lc1_37[] __asm__(".Lc1_37");
extern unsigned char Lc1_25[] __asm__(".Lc1_25");
extern unsigned char Lc1_46[] __asm__(".Lc1_46");
extern unsigned char Lc1_24[] __asm__(".Lc1_24");
extern unsigned char Lc1_44[] __asm__(".Lc1_44");
extern unsigned char Lc1_28[] __asm__(".Lc1_28");
extern unsigned char Lc1_27[] __asm__(".Lc1_27");
extern unsigned char Lc1_23[] __asm__(".Lc1_23");
extern unsigned char Lc1_18[] __asm__(".Lc1_18");
extern unsigned char Lc1_47[] __asm__(".Lc1_47");
extern unsigned char Lc1_34[] __asm__(".Lc1_34");
extern unsigned char Lc1_35[] __asm__(".Lc1_35");
extern unsigned char Lc1_39[] __asm__(".Lc1_39");
extern unsigned char Lc1_30[] __asm__(".Lc1_30");
extern unsigned char Lc1_33[] __asm__(".Lc1_33");
extern unsigned char Lc1_22[] __asm__(".Lc1_22");

extern void __StopTask(void *);
extern void __Func_8003f3c(int);
extern int __Func_8003d28(struct C1_ObjAffineSrc *);
extern void __Func_8003dec(void *, int);

#define SetRegAnimDest_c1(queue, dest, src) do { \
    unsigned int savedIme = REG_IME; \
    int count; \
    unsigned int *task; \
    int slot; \
    SET_IO(REG_IME, REG_ADDR_IME); \
    count = *queue; \
    if (count < 32) { \
        slot = count * 12; \
        count++; \
        task = (unsigned int *)((char *)queue + slot); \
        *queue = count; \
        task++; \
        *task++ = (unsigned int)(src); \
        *task++ = (unsigned int)(dest); \
        *task = 0x20000; \
    } \
    SET_IO(REG_IME, savedIme); \
} while (0)

struct C1_920_Node {
    int unk0;
    int unk4;
    int unk8;
};

void OvlFunc_common1_920(void)
{
    unsigned int *sp8 = (unsigned int *)Lc1_43;
    struct C1_920_Node *r10 = (struct C1_920_Node *)Lc1_43;
    int r8 = gSpriteSlots[*(short *)Lc1_10].vramOffset >> 5;
    int timer;
    int r11;
    int r6;
    int sp4;
    struct C1_ObjAffineSrc affine;

loop:
    if ((timer = *(short *)Lc1_36) == 0) {
        unsigned short *r0 = *(unsigned short **)Lc1_37;
        unsigned short *r2;
        short *resetPtr;
        int cmd = *r0++;
        cmd = (short)cmd;
        *(unsigned short **)Lc1_37 = r0;
        switch (cmd) {
        case 0x4000:
            *(int *)Lc1_25 = (*(short *)r0) << 8;
            r2 = r0 + 1;
            *(unsigned short *)Lc1_46 = *r2;
            resetPtr = (short *)Lc1_24;
            *(unsigned short **)Lc1_37 = ++r2;
            *resetPtr = timer;
            goto loop;
        case 0x3000:
            *(unsigned short *)Lc1_44 = *(unsigned short *)Lc1_46;
            *(unsigned short *)Lc1_46 = *r0;
            r2 = r0 + 1;
            *(unsigned short *)Lc1_24 = *r2;
            resetPtr = (short *)Lc1_28;
            *(unsigned short **)Lc1_37 = ++r2;
            *resetPtr = timer;
            goto loop;
        case 0x1000:
            *(unsigned short *)Lc1_23 = *(unsigned short *)Lc1_27;
            *(unsigned short *)Lc1_27 = *r0;
            r2 = r0 + 1;
            *(unsigned short *)Lc1_18 = *r2;
            resetPtr = (short *)Lc1_47;
            *(unsigned short **)Lc1_37 = ++r2;
            *resetPtr = timer;
            goto loop;
        case 0x2000:
            *(unsigned short *)Lc1_35 = *(unsigned short *)Lc1_34;
            *(unsigned short *)Lc1_34 = *r0;
            r2 = r0 + 1;
            *(unsigned short *)Lc1_39 = *r2;
            resetPtr = (short *)Lc1_30;
            *(unsigned short **)Lc1_37 = ++r2;
            *resetPtr = timer;
            goto loop;
        case 0x7fff:
            *(short *)Lc1_36 = *r0;
            *(unsigned short **)Lc1_37 = r0 + 1;
            goto loop;
        case -1:
            __StopTask(OvlFunc_common1_920);
            __Func_8003f3c(*(short *)Lc1_10);
            return;
        default:
            goto loop;
        }
    } else {
        int duration;
        unsigned int shapeSize;
        int yBase;
        short zero = 0;
        unsigned short *queue;

        (*(short *)Lc1_36)--;

        duration = *(short *)Lc1_18;
        if (duration == 0) {
            r11 = *(short *)Lc1_27;
        } else {
            int start = *(short *)Lc1_23;
            int diff = *(short *)Lc1_27 - start;
            int step = (short)(++*(unsigned short *)Lc1_47);
            r11 = start + (diff * step) / duration;
            if (step >= duration) {
                *(short *)Lc1_18 = zero;
            }
        }

        duration = *(short *)Lc1_39;
        if (duration == 0) {
            sp4 = *(short *)Lc1_34;
        } else {
            int start = *(short *)Lc1_35;
            int diff = *(short *)Lc1_34 - start;
            int step = (short)(++*(unsigned short *)Lc1_30);
            sp4 = start + (diff * step) / duration;
            if (step >= duration) {
                *(short *)Lc1_39 = zero;
            }
        }

        duration = *(short *)Lc1_24;
        if (duration == 0) {
            r6 = *(short *)Lc1_46;
        } else {
            int start = *(short *)Lc1_44;
            int diff = *(short *)Lc1_46 - start;
            int step = (short)(++*(unsigned short *)Lc1_28);
            r6 = start + (diff * step) / duration;
            if (step >= duration) {
                *(short *)Lc1_24 = zero;
            }
        }

        affine.angle = zero;
        affine.yScale = affine.xScale = r11;
        {
            int rot = (short)__Func_8003d28(&affine);
            int val = *(int *)Lc1_25 + r6;
            int i;
            *(int *)Lc1_25 = val;
            r6 = val / 256;

            switch (*(short *)Lc1_33) {
            case 1: {
                unsigned int rotBits;
                shapeSize = 0x80004000;
                i = 0;
                yBase = 0x38;
                rotBits = (unsigned int)rot << 25;
                for (; i <= 3; i++, r8 += 8) {
                    int temp = r6 + ((i * 32 - 0x30) * r11) / 256;
                    int xVal = temp + 0x58;
                    if ((unsigned int)(temp + 0x98) <= 0x12f) {
                        *sp8++ = 0;
                        *sp8++ = ((xVal & 0x1ff) << 16) | yBase | shapeSize | rotBits | (0xe0 << 3);
                        *sp8++ = (0xf4 << 8) | r8;
                        __Func_8003dec(r10++, 0xec);
                    }
                }
                break;
            }
            case 3: {
                unsigned int rotBits;
                shapeSize = 0x80004000;
                i = 0;
                yBase = 0x30;
                rotBits = (unsigned int)rot << 25;
                for (; i <= 1; i++, r8 += 8) {
                    int temp = r6 + ((i * 32 - 0x10) * r11) / 256;
                    int xVal = temp + 0x58;
                    if ((unsigned int)(temp + 0x98) <= 0x12f) {
                        *sp8++ = 0;
                        *sp8++ = ((xVal & 0x1ff) << 16) | yBase | shapeSize | rotBits | (0xe0 << 3);
                        *sp8++ = (*(short *)Lc1_22 + r8) | (0xf4 << 8);
                        __Func_8003dec(r10++, 0xec);
                    }
                }
                break;
            }
            case 4: {
                int xVal;
                yBase = 0x30;
                shapeSize = 0xc0004000;
                xVal = r6 + 0x38;
                if ((unsigned int)(r6 + 0x78) < (0x98 << 1)) {
                    *sp8++ = 0;
                    *sp8++ = ((xVal & 0x1ff) << 16) | yBase | shapeSize | ((unsigned int)rot << 25) | (0xe0 << 3);
                    *sp8 = (*(short *)Lc1_22 + r8) | (0xf4 << 8);
                    __Func_8003dec(r10, 0xec);
                }
                break;
            }
            case 2: {
                int xVal;
                shapeSize = 0x80000000;
                yBase = 0x30;
                xVal = r6 + 0x58;
                if ((unsigned int)(r6 + 0x98) < (0x98 << 1)) {
                    *sp8++ = 0;
                    *sp8++ = ((xVal & 0x1ff) << 16) | yBase | shapeSize | ((unsigned int)rot << 25) | (0xe0 << 3);
                    *sp8 = (*(short *)Lc1_22 + r8) | (0xf4 << 8);
                    __Func_8003dec(r10, 0xec);
                }
                break;
            }
            }
        }
        queue = (unsigned short *)&gDMATaskCount;
        SetRegAnimDest_c1(queue, REG_ADDR_BLDCNT, 0x3f00);
        SetRegAnimDest_c1(queue, REG_ADDR_BLDALPHA, ((16 - sp4) << 8) | sp4);
        return;
    }
}
#undef SetRegAnimDest_c1

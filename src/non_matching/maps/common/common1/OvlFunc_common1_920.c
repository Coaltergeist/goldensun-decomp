#define REG_IME (*(volatile unsigned short *)0x04000208)

#define REG_ADDR_IME 0x04000208

#define REG_BLDCNT ((void *)0x04000050)

#define REG_BLDALPHA ((void *)0x04000052)

struct DmaTransfer {
    const void *src;
    void *dest;
    unsigned int control;
};

struct DmaQueue {
    unsigned short count;
    struct DmaTransfer tasks[32];
};

struct ObjAffineSrc {
    short xScale;
    short yScale;
    unsigned short angle;
};

extern struct DmaQueue gDMATaskCount;

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

void __StopTask(void *);

void __Func_8003f3c(int);

int __Func_8003d28(struct ObjAffineSrc *);

void __Func_8003dec(void *, int);

void OvlFunc_common1_920(void)
{
    unsigned int *sp8 = (unsigned int *)Lc1_43;
    unsigned char *r10 = Lc1_43;
    int r8 = gSpriteSlots[*(short *)Lc1_10].vramOffset >> 5;
    int r11;
    int r6;
    int sp4;
    struct ObjAffineSrc affine;

loop:
    {
        short r4 = *(short *)Lc1_36;
        unsigned short r3 = *(unsigned short *)Lc1_36;
        if (r4 == 0) {
            unsigned short *r0 = *(unsigned short **)Lc1_37;
            int cmd = *r0++;
            unsigned char *r1_addr;
            unsigned short *r2;
            cmd = (short)cmd;
            *(unsigned short **)Lc1_37 = r0;
            switch (cmd) {
            case 0x4000:
                *(int *)Lc1_25 = (*(short *)r0) << 8;
                *(unsigned short *)Lc1_46 = *(r2 = r0 + 1);
                r1_addr = Lc1_24;
                goto tail;
            case 0x3000:
                *(unsigned short *)Lc1_44 = *(unsigned short *)Lc1_46;
                *(unsigned short *)Lc1_46 = *r0;
                *(unsigned short *)Lc1_24 = *(r2 = r0 + 1);
                r1_addr = Lc1_28;
                goto tail;
            case 0x1000:
                *(unsigned short *)Lc1_23 = *(unsigned short *)Lc1_27;
                *(unsigned short *)Lc1_27 = *r0;
                *(unsigned short *)Lc1_18 = *(r2 = r0 + 1);
                r1_addr = Lc1_47;
                goto tail;
            case 0x2000:
                *(unsigned short *)Lc1_35 = *(unsigned short *)Lc1_34;
                *(unsigned short *)Lc1_34 = *r0;
                *(unsigned short *)Lc1_39 = *(r2 = r0 + 1);
                r1_addr = Lc1_30;
            tail:
                *(unsigned short **)Lc1_37 = r2 + 1;
                *(short *)r1_addr = r4;
                goto loop;
            case 0x7fff:
                *(unsigned short *)Lc1_36 = *r0;
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
            int step;

            *(unsigned short *)Lc1_36 = r3 - 1;

            duration = *(short *)Lc1_18;
            if (duration == 0) {
                r11 = *(short *)Lc1_27;
            } else {
                int start = *(short *)Lc1_23;
                int end = *(short *)Lc1_27;
                step = (short)(++*(unsigned short *)Lc1_47);
                r11 = start + (step * (end - start)) / duration;
                if (step >= duration) {
                    *(short *)Lc1_18 = 0;
                }
            }

            duration = *(short *)Lc1_39;
            if (duration == 0) {
                sp4 = *(short *)Lc1_34;
            } else {
                int start = *(short *)Lc1_35;
                int end = *(short *)Lc1_34;
                step = (short)(++*(unsigned short *)Lc1_30);
                sp4 = start + (step * (end - start)) / duration;
                if (step >= duration) {
                    *(short *)Lc1_39 = 0;
                }
            }

            duration = *(short *)Lc1_24;
            if (duration == 0) {
                r6 = *(short *)Lc1_46;
            } else {
                int start = *(short *)Lc1_44;
                int end = *(short *)Lc1_46;
                step = (short)(++*(unsigned short *)Lc1_28);
                r6 = start + (step * (end - start)) / duration;
                if (step >= duration) {
                    *(short *)Lc1_24 = 0;
                }
            }

            affine.angle = 0;
            affine.xScale = r11;
            affine.yScale = r11;
            {
                int rot = (short)__Func_8003d28(&affine);
                int val = *(int *)Lc1_25 + r6;
                *(int *)Lc1_25 = val;
                r6 = val / 256;

                switch (*(short *)Lc1_33) {
                case 1: {
                    unsigned int r4 = 0x80004000;
                    unsigned int r7 = 0x38;
                    unsigned int r9 = (unsigned int)rot << 25;
                    for (step = 0; step <= 3; step++, r8 += 8) {
                        int temp = r6 + ((step * 32 - 0x30) * r11) / 256;
                        int r2 = temp + 0x58;
                        if ((unsigned int)(temp + 0x98) <= 0x12f) {
                            *sp8++ = 0;
                            *sp8++ = ((r2 & 0x1ff) << 16) | r7 | r4 | r9 | (0xe0 << 3);
                            *sp8++ = (0xf4 << 8) | r8;
                            __Func_8003dec(r10, 0xec);
                            r10 += 12;
                        }
                    }
                    break;
                }
                case 3: {
                    unsigned int r4 = 0x80004000;
                    unsigned int r7 = 0x30;
                    unsigned int r9 = (unsigned int)rot << 25;
                    for (step = 0; step <= 1; step++, r8 += 8) {
                        int temp = r6 + ((step * 32 - 0x10) * r11) / 256;
                        int r2 = temp + 0x58;
                        if ((unsigned int)(temp + 0x98) <= 0x12f) {
                            *sp8++ = 0;
                            *sp8++ = ((r2 & 0x1ff) << 16) | r7 | r4 | r9 | (0xe0 << 3);
                            *sp8++ = (*(short *)Lc1_22 + r8) | (0xf4 << 8);
                            __Func_8003dec(r10, 0xec);
                            r10 += 12;
                        }
                    }
                    break;
                }
                case 4: {
                    int r3_val = r6 + 0x78;
                    int r5_val = 0x98 << 1;
                    int r7_val = 0x30;
                    unsigned int r4_val = 0xc0004000;
                    int r2_val = r6 + 0x38;
                    if ((unsigned int)r3_val < (unsigned int)r5_val) {
                        unsigned int *r1_buf = (unsigned int *)r10;
                        *r1_buf++ = 0;
                        *r1_buf++ = ((r2_val & 0x1ff) << 16) | r7_val | ((unsigned int)rot << 25) | r4_val | (0xe0 << 3);
                        sp8 = r1_buf;
                        *r1_buf = (*(short *)Lc1_22 + r8) | (0xf4 << 8);
                        __Func_8003dec(r10, 0xec);
                    }
                    break;
                }
                case 2: {
                    int r3_val = r6 + 0x98;
                    int r1_val = 0x98 << 1;
                    unsigned int r4_val = 0x80 << 24;
                    int r7_val = 0x30;
                    int r2_val = r6 + 0x58;
                    if ((unsigned int)r3_val < (unsigned int)r1_val) {
                        unsigned int *r5_buf = (unsigned int *)r10;
                        *r5_buf++ = 0;
                        *r5_buf++ = ((r2_val & 0x1ff) << 16) | r7_val | ((unsigned int)rot << 25) | r4_val | (0xe0 << 3);
                        sp8 = r5_buf;
                        *r5_buf = (*(short *)Lc1_22 + r8) | (0xf4 << 8);
                        __Func_8003dec(r10, 0xec);
                    }
                    break;
                }
                }
            }
            {
                struct DmaQueue *queue = &gDMATaskCount;
                volatile unsigned short *ime = (volatile unsigned short *)0x04000208;
                unsigned int savedIme = *ime;
                *ime = (unsigned int)0x04000208;
                if ((int)queue->count <= 31) {
                    int count = queue->count;
                    unsigned int *task = (unsigned int *)((char *)queue + count * 12 + 4);
                    queue->count = count + 1;
                    *task++ = 0xfc << 6;
                    *task++ = (unsigned int)0x04000050;
                    *task = 0x80 << 10;
                }
                *ime = savedIme;
                savedIme = *ime;
                *ime = (unsigned int)0x04000208;
                if ((int)queue->count <= 31) {
                    int count = queue->count;
                    unsigned int *task;
                    queue->count = count + 1;
                    task = (unsigned int *)((char *)queue + count * 12 + 4);
                    *task++ = ((16 - sp4) << 8) | sp4;
                    *task++ = (unsigned int)0x04000052;
                    *task = 0x80 << 10;
                }
                *ime = savedIme;
            }
            return;
        }
    }
}

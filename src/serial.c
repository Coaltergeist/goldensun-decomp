/* serial.c */
#include "nonmatching.h"
#include "gba/types.h"
#include "interrupt.h"
#include "dma.h"
#include "gba/io.h"

struct LinkState {
    /* 0x00 */ u8  unk_00;
    /* 0x01 */ u8  unk_01;
    /* 0x02 */ u8  unk_02;
    /* 0x03 */ u8  unk_03;
    /* 0x04 */ u8  unk_04[4];
    /* 0x08 */ u8  unk_08;
    /* 0x09 */ u8  unk_09;
    /* 0x0A */ u8  unk_0A;
    /* 0x0B */ u8  unk_0B;
    /* 0x0C */ u8  unk_0C[8];
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ s32  unk_18[4];
    /* 0x28 */ u8 * volatile unk_28;
    /* 0x2C */ u8 *unk_2C;
    /* 0x30 */ u8 *unk_30[4];
    /* 0x40 */ u8 *unk_40[4];
    /* 0x50 */ u8 *unk_50[4];
    /* 0x60 */ u8  unk_60[0x20];
    /* 0x80 */ u8  unk_80[0x20];
    /* 0xA0 */ u8  unk_A0[2][3][0x20];
}; // sizeof == 0x160

extern struct LinkState ewram_2002240;
extern u16 iwram_3001cb0;
extern u8  ewram_20023a0;
extern u32 ewram_2002080;
extern u16 ewram_2002008;
extern u32 ewram_20023ac;
extern u16 ewram_2002238;

extern void Func_800651c(void);
extern void SetIntrHandler(u32 intr, u32 dispstat, intrfunc_t *vector);
extern void Func_8006240(void);

void Func_8005d10(void) {
    u32 ime;
    s32 i;
    u32 temp;

    ime = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);

    SetIntrHandler(7, 0, Func_8006240);
    SetIntrHandler(6, 0, Func_8006240);

    REG_IME = 0;
    REG_IE = REG_IE & 0xFF3F;

    if (REG_IF & 0x80)
        REG_IF = 0x80;
    if (REG_IF & 0x40)
        REG_IF = 0x40;

    REG_RCNT = 0x8000;

    REG_RCNT = 0;
    temp = 0x1000;
    (*(vu32*)REG_ADDR_SIOCNT) = temp;

    REG_RCNT = 0;
    temp = 0x2000;
    (*(vu32*)REG_ADDR_SIOCNT) = temp;

    REG_SIOCNT = REG_SIOCNT | 0x4003;

    REG_IME= 1;

    DMA3_CLEAR(&ewram_2002240, sizeof(ewram_2002240));

    ewram_2002240.unk_14 = -1;
    ewram_2002240.unk_28 = ewram_2002240.unk_60;
    ewram_2002240.unk_2C = ewram_2002240.unk_80;

    for (i = 0; i < 2; i++) {
        ewram_2002240.unk_30[i] = ewram_2002240.unk_A0[i][0];
        ewram_2002240.unk_40[i] = ewram_2002240.unk_A0[i][1];
        ewram_2002240.unk_50[i] = ewram_2002240.unk_A0[i][2];
    }

    REG_IME = 0;
    REG_IE = REG_IE | 0x80;
    REG_IME = 1;

    iwram_3001cb0 = 1;
    ewram_20023a0 = 0;
    ewram_2002080 = 0;
    ewram_2002008 = 0;
    ewram_20023ac = 0;
    ewram_2002238 = 0;

    Func_800651c();

    SET_IO(REG_IME, ime);
}

void Func_8005e70(void) {
    if (ewram_2002240.unk_00) {
        ewram_2002240.unk_04[4] = 1;
    }
}

void Func_8005e88(void) {
    REG_IME = 0;
    REG_IE &= 0xff3f;
    REG_IME = 1;
    REG_SIOCNT = 0x2003;
    REG_TM3CNT = 0xC963;
    REG_IF = 0xC0;
    ewram_2002240.unk_04[4] = 0;
}

extern void Func_80060e8(const void *);
extern u8 Func_800615c(u16 *);

u32 Func_8005ee0(const void *a, void *b) {
    vu32 *siocntPtr = (vu32 *)REG_ADDR_SIOCNT;
    u32 siocnt = *siocntPtr;
    u32 result;
    u32 temp;
    u8 err;
    register u32 fakeResult asm("r2"); // fakematch

    switch (ewram_2002240.unk_01) {
    case 0:
    err = siocnt & 0x30;
    if ((err) == 0) {
        err = siocnt & 0x88;
        if (err != 8)
            break;

        err = siocnt & 4;
        if (err == 0 && ewram_2002240.unk_14 == -1) {
            SET_IO(REG_IME, 0);
            temp = REG_IE;
            SET_IO(REG_IE, (temp & ~0x80) | 0x40);
            SET_IO(REG_IME, 1);
            do {
                s32 sioH = ((vu8 *)siocntPtr)[1] & ~0x40;
                ((vu8 *)siocntPtr)[1] = sioH;
            } while (0);

            REG_IF = 0xC0;
            *(vu32 *)REG_ADDR_TM3CNT = 0xC963;

            ewram_2002240.unk_00 = siocnt & 0x88;
        }
    }
    ewram_2002240.unk_01 = 1;

    // fallthrough
    case 1:
        Func_800615c(b);
        Func_80060e8(a);
    }

    ewram_2002240.unk_0B++;
    fakeResult = ewram_2002240.unk_03;
    fakeResult |= (ewram_2002240.unk_02 << 8);
    if (ewram_2002240.unk_00 == 8)
        fakeResult |= 0x80;
    result = fakeResult;
    if (ewram_2002240.unk_09)
        result |= 0x1000;
    if (((siocnt << 26) >> 30) > 1)
        result |= 0x2000;

    return result;
}

u32 Func_8005fcc(void) {
    vu32 *siocntPtr = (vu32 *)REG_ADDR_SIOCNT;
    u32 siocnt = *siocntPtr;
    u32 result;
    register u32 fakeResult asm("r2"); // fakematch
    u32 temp;
    u8 err;

    if (ewram_2002240.unk_01 == 0) {
        err = siocnt & 0x88;
        if (err == 8) {
            err = siocnt & 4;
            if (err == 0 && ewram_2002240.unk_14 == -1) {
                SET_IO(REG_IME, 0);
                temp = REG_IE;
                SET_IO(REG_IE, (temp & ~0x80) | 0x40);
                SET_IO(REG_IME, 1);
                do {
                    s32 sioH = ((vu8 *)siocntPtr)[1] & ~0x40;
                    ((vu8 *)siocntPtr)[1] = sioH;
                } while (0);

                REG_IF = 0xC0;
                *(vu32 *)REG_ADDR_TM3CNT = 0xC963;

                ewram_2002240.unk_00 = siocnt & 0x88;
            }
            ewram_2002240.unk_01 = 1;
        }
        ewram_2002240.unk_0B++;
    }

    fakeResult = ewram_2002240.unk_03;
    fakeResult |= ewram_2002240.unk_02 << 8;
    if (ewram_2002240.unk_00 == 8)
        fakeResult |= 0x80;
    result = fakeResult;
    if (ewram_2002240.unk_09)
        result |= 0x1000;
    if (((siocnt << 26) >> 30) > 1)
        result |= 0x2000;
    return result;
}

u32 Func_8006088(const void* arg0, u16* arg1) {
    u32 siocnt = *(vu32 *)REG_ADDR_SIOCNT;
    u32 result;
    register u32 fakeResult asm ("r2"); // fakematch

    if (ewram_2002240.unk_01 == 1) {
        Func_800615c(arg1);
        Func_80060e8(arg0);
        ewram_2002240.unk_0B++;
    }
    fakeResult = ewram_2002240.unk_03 | (ewram_2002240.unk_02 << 8);
    if (ewram_2002240.unk_00 == 8) {
        fakeResult |= 0x80;
    }
    result = fakeResult;
    if (ewram_2002240.unk_09 != 0) {
        result |= 0x1000;
    }
    if ((u32) ((u32) (siocnt << 0x1A) >> 0x1E) > 1U) {
        result |= 0x2000;
    }
    return result;
}

void Func_80060e8(const void *src) {
    u8 *buf;
    u16 *p;
    u32 sum = 0;
    u32 i;
    struct LinkState *ls = &ewram_2002240;
    u16 *cs;
    buf = ls->unk_28;
    buf[0] = ls->unk_0B;
    buf[1] = ls->unk_02 ^ ls->unk_03;
    *(u16 *)(buf + 2) = sum;
    DMA3_COPY(src, buf + 4, 24);

    sum = 0;
    p = (u16 *)ls->unk_28;
    for (i = 0; i < 14; i++) {
        u32 val = *p;
        p++;
        sum += val;
    }
    cs = (u16*)(ls->unk_28 + 2);
    *cs = ~sum;

    if (ls->unk_00 != 0) {
        // yeah, I don't know either
        vu16 *timH = &REG_TM3CNT_H;
        u32 zero = 0;
        *timH = zero;
    }

    ls->unk_14 = -1;

    if (ls->unk_00 != 0 && ls->unk_08 != 0) {
        REG_TM3CNT_H = TIMER_ENABLE | TIMER_INTR_ENABLE;  //0xC0
    }
}

u8 Func_800615c(u16 *arg0) {
    struct LinkState *ls;
    __attribute__((aligned(4))) u8 recv[8];
    u8 **p;
    s32 i;
    u32 j;

    // recv buffer must be word aligned, this is UB.
    ((u32*)recv)[1] = 0;
    SET_IO(REG_IME, 0);
    ls = &ewram_2002240;
    p = ls->unk_40;
    for (i = 3; i >= 0; i--) {
        u8 *tmp = p[4];
        p[4] = p[0];
        *p++ = tmp;
    }

    // recv buffer must be word aligned, this is UB.
    ((u32*)recv)[0] = *(u32 *)ewram_2002240.unk_04;
    *(u32 *)ewram_2002240.unk_04 = 0;
    SET_IO(REG_IME, 1);
    ewram_2002240.unk_03 = 0;

    for (i = 0; i < 2; i++) {
        u16 *q = (u16 *)ewram_2002240.unk_50[i];
        u32 sum = 0;

        for (j = 0; j < 14; j++) {
            u32 val = *q;
            q++;
            sum += val;
        }

        if (recv[i] == 1 && (s16)sum == -1) {
            DMA3_COPY(ewram_2002240.unk_50[i] + 4, (u8 *)arg0 + i * 24, 24);
            ewram_2002240.unk_03 |= 1 << i;
        }

        if ((s16)sum == -1) {
            u16 *c = (u16 *)ewram_2002240.unk_50[i];
            c[1] = ~c[1];
        }
    }

    ewram_2002240.unk_02 |= ewram_2002240.unk_03;
    return ewram_2002240.unk_03;
}

INCLUDE_ASM("asm/serial/Func_8006240.s");

void Func_8006358(void) {
    iwram_3001cb0 = 0;
    SetIntrHandler(INTR_ID_SERIAL, 0, NULL);
    SetIntrHandler(INTR_ID_TIMER3, 0, NULL);
}

void WaitFrames(u32 n);
extern vu16 iwram_3001f64;

u32 Func_8006384(s32 arg0) {
    u32 temp = iwram_3001f64;
    if ((arg0 & temp) != arg0) {
        do {
            WaitFrames(1);
        } while ((arg0 & iwram_3001f64) != arg0);
    }
    return (u32)(*(vu32 *)REG_ADDR_SIOCNT << 0x1A) >> 0x1E;
}

extern u8 ewram_20023a4;
extern u8 ewram_2002220[]; // something is off when this field is involved

// fakematch
s32 Func_80063bc(u32 arg0, u32 arg1) {
    u32 ime;
    register u32 *p asm("r5") = &ewram_2002080;
    u32 prev = *p;
    register u32 tempArg1 asm("r6") = arg1;
    register u32 one asm("r3");
    u8 *ptr = ewram_2002220;
    if (prev != 0)
        return -1;

    ime = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);

    ptr[1] = 0x80;

    ewram_2002008 = tempArg1;
    ewram_20023a4 = prev;
        one = 1;
    __asm__ volatile("");
    *p = arg0;
    __asm__ volatile("");
    ptr[0] = one;
    REG_IME = ime;
    return 0;
}

INCLUDE_ASM("asm/serial/Func_8006408.s");

void Func_8006458(void)
{
    unsigned int count;
    count = 0;
    if (ewram_2002080 != 0) {
        do {
            WaitFrames(1);
            count++;
            if (count > 0x927bf)
                break;
        } while (ewram_2002080 != 0);
    }
}

void Func_8006488(void)
{
    unsigned int count;
    count = 0;
    if (ewram_20023ac != 0) {
        do {
            WaitFrames(1);
            count++;
            if (count > 0x927bf)
                break;
        } while (ewram_20023ac != 0);
    }
}

INCLUDE_ASM("asm/serial/Func_80064b8.s");

unsigned int Func_80064f4(void)
{
    unsigned int result;

    result = 0;
    if (ewram_2002080 != 0)
        result = 1;
    if (ewram_20023ac != 0)
        result |= 2;
    return result;
}

void Func_800651c(void)
{
    register unsigned char *p __asm__("r1") = ewram_2002220;
    register volatile unsigned short *ime __asm__("r0") =
        (volatile unsigned short *)REG_ADDR_IME;
    register u32 imeBackup __asm__("r4");
    register u32 zero __asm__("r2");

    __asm__ volatile ("" : : "r" (p));
    __asm__ volatile ("" : : "r" (ime));
    imeBackup = *ime;
    __asm__ volatile ("" : : "r" (imeBackup));
    *ime = (u32)ime;
    zero = 0;
    __asm__ volatile ("" : : "r" (zero));
    p[1] = 0x80;
    ewram_2002080 = zero;
    ewram_2002008 = zero;
    ewram_20023ac = zero;
    p[3] = zero;
    p[2] = zero;
    ewram_2002238 = zero;
    *ime = imeBackup;
}

INCLUDE_ASM("asm/serial/Func_800655c.s");

void Func_8006798(void) {}

INCLUDE_ASM("asm/serial/Debug_TransferTest.s");

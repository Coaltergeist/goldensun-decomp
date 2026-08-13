/* serial.c */
#include "nonmatching.h"

extern unsigned char ewram_2002240;
extern unsigned char ewram_2002240__a1[] __asm__("ewram_2002240");
extern unsigned short (*ewram_2004c14)(unsigned short);
extern volatile unsigned short iwram_3001cb0;
extern void SetIntrHandler(int intr, unsigned int dispstat, void *vector);
extern void WaitFrames(unsigned int nframes);
extern unsigned int ewram_2002080;
extern unsigned int ewram_20023ac;
#include "dma.h"
#include "gba/io.h"
extern unsigned char  ewram_2002220[];
extern unsigned short ewram_2002008;
extern unsigned short ewram_2002238;
extern unsigned char *iwram_3001f1c__a1 __asm__("iwram_3001f1c");

INCLUDE_ASM("asm/serial/Func_8005d10.s");

void Func_8005e70(void) {
    unsigned char *p = &ewram_2002240;
    if (p[0]) {
        p[8] = 1;
    }
}

void Func_8005e88(void)
{
    *(volatile unsigned short *)0x4000208 = 0;
    *(volatile unsigned short *)0x4000200 &= 0xff3f;
    *(volatile unsigned short *)0x4000208 = 1;
    *(volatile unsigned short *)0x4000128 = 0x2003;
    *(volatile unsigned int *)0x400010c = 0xc963;
    *(volatile unsigned short *)0x4000202 = 0xc0;
    ewram_2002240__a1[8] = 0;
}

INCLUDE_ASM("asm/serial/Func_8005ee0.s");

INCLUDE_ASM("asm/serial/Func_8005fcc.s");

INCLUDE_ASM("asm/serial/Func_8006088.s");

INCLUDE_ASM("asm/serial/Func_80060e8.s");

INCLUDE_ASM("asm/serial/Func_800615c.s");

INCLUDE_ASM("asm/serial/Func_8006240.s");

void Func_8006358(void)
{
    iwram_3001cb0 = 0;
    SetIntrHandler(7, 0, (void *)0);
    SetIntrHandler(6, 0, (void *)0);
}

INCLUDE_ASM("asm/serial/Func_8006384.s");

INCLUDE_ASM("asm/serial/Func_80063bc.s");

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

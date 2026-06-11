/* Cluster Func_800651c..Func_800651c extracted from goldensun/asm/rom_c0/rom_5cf8_a_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_c_a.o and asm/rom_c0/rom_5cf8_a_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_800651c @ 0x0800651c  [asm/rom_c0/rom_5cf8_a_c.s]
 *
 * IME save / disable / restore around a set of ewram zero-inits, using the
 * IME-disable peephole (strh r0,[r0] -- storing the even register address
 * instead of materializing 0; here `*ime = (u32)ime`), per the matched
 * SetIntrHandler (src/rom_c0/rom_2e00_c_c_b.c:142-147,175).
 *   ewram_2002220[1] = 0x80;  then zero 2002080(u32) 2002008(u16) 20023ac(u32)
 *   2002220[3] 2002220[2] 2002238(u16); restore REG_IME.
 * The ROM allocation (r1 = &ewram_2002220 loaded FIRST, r0 = &REG_IME held the
 * whole function, r4 = backup with no push -- r4 is call-clobbered via the
 * Makefile -fcall-used-r4, r2 = ONE shared zero for every store width, r3
 * scratch, leaf bx lr) is unreachable from unpinned C: gcc rehomes the
 * pointers, pushes r5, and rematerializes a QImode zero from the pool for the
 * strb pair. Register-asm pins + the zero-byte empty-asm barriers (each pins
 * its variable materialized, in r-order, at that sequence point) reproduce it
 * exactly; the shared `zero` local keeps the byte stores on r2.
 */
#include "dma.h"
#include "gba/io.h"
extern unsigned char  ewram_2002220[];
extern unsigned int   ewram_2002080;
extern unsigned short ewram_2002008;
extern unsigned int   ewram_20023ac;
extern unsigned short ewram_2002238;

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

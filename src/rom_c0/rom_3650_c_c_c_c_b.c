// fakematch
/* Cluster Func_800393c..Func_800393c extracted from goldensun/asm/rom_c0/rom_3650_c_c_c_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3650_c_c_c_c_a.o and asm/rom_c0/rom_3650_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/types.h"
#include "gba/io.h"
struct DmaTransfer { const void *src; void *dest; u32 control; };
struct DmaQueue { u16 count; struct DmaTransfer tasks[32]; };
extern struct DmaQueue gDMATaskCount;

void Func_800393c(void *dest, const void *src)
{
    register struct DmaQueue *queue __asm__("r4");
    register void *d __asm__("r6");
    register const void *s __asm__("r0");
    u32 savedIme;
    s32 count;
    u32 *task;

    queue = &gDMATaskCount;
    __asm__ volatile("" : : "r"(queue));
    d = dest;
    s = src;
    savedIme = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);
    count = queue->count;
    if (count < 32) {
        task = (u32 *)((u32)count * 12 + (u32)queue + 4);
        *task++ = (u32)s;
        queue->count = count + 1;
        *task++ = (u32)d;
        *task = 0x60000;
    }
    SET_IO(REG_IME, savedIme);
}

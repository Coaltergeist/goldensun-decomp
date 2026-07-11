// fakematch
/* Cluster Func_800383c..Func_800383c extracted from goldensun/asm/rom_c0/rom_3650_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3650_c_a.o and asm/rom_c0/rom_3650_c_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/types.h"
#include "gba/io.h"

struct DmaTransfer {
    const void *src;
    void *dest;
    u32 control;
};

struct DmaQueue {
    u16 count;
    struct DmaTransfer tasks[32];
};

extern struct DmaQueue gDMATaskCount;

static inline void ScheduleDmaTransfer(void *dest, const void *src, u32 cnt) {
    struct DmaQueue *queue;
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
        task = (u32 *)(count * 12 + (u32)queue + 4);
        *task++ = (u32)s;
        queue->count = count + 1;
        *task++ = (u32)d;
        *task = cnt;
    }
    SET_IO(REG_IME, savedIme);
}

void Func_800383c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x10000);
}

void SetRegAnimDest(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x20000);
}

void Func_80038bc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x30000);
}

void Func_80038fc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x50000);
}

void Func_800393c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x60000);
}

void Func_800397c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x70000);
}

void Func_80039bc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x90000);
}

void Func_80039fc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0xA0000);
}

void Func_8003a3c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0xB0000);
}
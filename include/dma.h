#ifndef _DMA_H_
#define _DMA_H_

#include "gba/io.h"
#include "gba/types.h"

static inline void WaitForDma3(void) {
    vu32 *dma = &REG_DMA3SAD;
    while (dma[2] & 0x80000000) ;
    return;
}

// wrapper inline assembly for starting a DMA3 transfer.
// I'm not sure if this is the whole story, but it matches the
// common pattern of
// fill r0-r3 with dma-related values
// stmia r3!, {r0,r1,r2}
// subs r3, #0xc

static inline void DMA3_COPY(const void *src, void *dst, u32 size) {
    register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
    register const void *_src  __asm__("r0") = src;
    register void *_dst  __asm__("r1") = dst;
    register u32 _cnt  __asm__("r2") = 0x84000000 | (size / 4);
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "memory"
    );
}

static inline void DMA3_SET(const void *src, void *dst, u32 cnt) {
    register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
    register const void *_src  __asm__("r0") = src;
    register void *_dst  __asm__("r1") = dst;
    register u32 _cnt  __asm__("r2") = cnt;
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "memory"
    );
}

// there must be a way to unify those, maybe they were macros instead of
// inline functions and had some sort of common DMAN_SET

static inline void DMA3_CLEAR(void *dst, unsigned size) {
    vu32 value;
    vu32 *src = &value;
    *src = 0;
    {
        register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
        register vu32  *_src  __asm__("r0") = src;
        register unsigned _dst __asm__("r1") = (unsigned)dst;
        register unsigned _cnt __asm__("r2") = (unsigned)(0x85000000 | (size / 4));
        __asm__ volatile (
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            : : "l" (_base), "l" (_src), "l" (_dst), "l" (_cnt) : "memory");
    }
}

// there must be a way to unify those, maybe they were macros instead of
// inline functions and had some sort of common DMAN_SET

static inline void DMA3_FILL(void *dst, u32 _value, unsigned size) {
    u32 value;
    register u32 * _src  __asm__("r0") = (&value);
    *_src = _value;
    {
        register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
        register unsigned _dst  __asm__("r1") = (unsigned)(dst);
        register unsigned _cnt  __asm__("r2") = (unsigned)(0x85000000 | (size / 4));
        __asm__ volatile (
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            :
            : "l" (_base), "l" (_src), "l" (_dst), "l" (_cnt)
            : "memory"
        );
    }
}

static inline void DMA3_COPY16(const void *src, void *dst, u32 size) {
    register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
    register const void *_src  __asm__("r0") = src;
    register void *_dst  __asm__("r1") = dst;
    register u32 _cnt  __asm__("r2") = 0x80000000 | (size / 4);
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "memory"
    );
}

// prelude on some functions

static inline u16 UnknownDMAPrefix(void) {
    vu16 *dma = (vu16*)&REG_DMA0SAD;
    u16 cnt = dma[5];
    dma[5] = cnt & 0xc5ff;
    cnt = dma[5];
    dma[5] = cnt & 0x7fff;
    return dma[5];
}

/* DMA3 zero-fill of a byte range within a buffer. This variant preserves
 * the save routine's conservative r3 clobber; it is intentionally not replaced
 * by DMA3_CLEAR, whose asm contract differs. Offset and size are in bytes. */
static inline void DMA3_CLEAR_REGION(void *base, unsigned int offset, unsigned int size) {
    u32 tmp;
    u32 zero = 0;
    register u32 *_src __asm__("r0") = &tmp;
    register u32 _dst __asm__("r1") = (u32)base + offset;
    *_src = zero;
    {
        register vu32 *_base __asm__("r3") = (vu32 *)0x040000d4;
        register u32 _cnt __asm__("r2") = 0x85000000 | (size / 4);
        __asm__ volatile (
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            :
            : "l" (_base), "l" (_src), "l" (_dst), "l" (_cnt)
            : "memory", "r3"
        );
    }
}

// A queued DMA copy (the gDMATasks[33] table).
typedef struct {
    const void *src;      // 0x00
    void *dest;     // 0x04
    u32 control;     // 0x08
} DMATask;

typedef struct {
	u16 count;
	u16 _pad;
	DMATask tasks[32];
} DmaQueue;

extern DmaQueue gDMATaskCount;

// reference only. clean, but can not match the binary.
static inline void ScheduleDmaTransfer_Standard(void* dest, const void* src, u32 control) {
	DmaQueue* queue;
	u32 savedIme;
	s32 count;
	DMATask* task;
	queue = &gDMATaskCount;
	savedIme = REG_IME;
	SET_IO(REG_IME, REG_ADDR_IME);
	count = queue->count;
	if (count < 32) {
		task = &queue->tasks[count];
		task->src = src;
		queue->count = count + 1;
		task->dest = dest;
		task->control = control;
	}
	SET_IO(REG_IME, savedIme);
}

#define DMATASK_TYPE_DMA 0x0 // do not use this type
#define DMATASK_TYPE_BYTE 0x1
#define DMATASK_TYPE_HWORD 0x2 // 2byte
#define DMATASK_TYPE_WORD 0x3 // 4byte
#define DMATASK_OP_ASSIGN (0x0 << 18) // a = b 
#define DMATASK_OP_SET (0x1 << 18) // a = a | b 
#define DMATASK_OP_CLR (0x2 << 18) // a = a & ~b 
// use control as DMA3CNT (bit 20-16 unused)
#define MAKE_DMATASK_DMA(dma3_ctrl, dma3_wordcnt) (((dma3_ctrl) << 16) | (dma3_wordcnt))
// use 20-16 bit, opcode in 19-18 bit, type in 17-16 bit
#define MAKE_DMATASK_REG(op, type) ((op) | ((type) << 16))

#endif // _DMA_H_

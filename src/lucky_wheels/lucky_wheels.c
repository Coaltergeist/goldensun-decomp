#include "nonmatching.h"
#include "dma.h"

extern volatile unsigned short iwram_disp;
extern unsigned int gState[];
extern unsigned int gRNGState;
extern void _PlaySound(int);
extern void LuckyWheelsMain(void);

int StartLuckyWheels(void)
{
    *(volatile unsigned short *)0x04000000 = 0x40;
    gRNGState = gState[1];
    _PlaySound(9);
    LuckyWheelsMain();
    return 0;
}

INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f6038.s");
extern u8 *iwram_3001eec[];
extern void *Func_80008d8(void *dst, unsigned int size, unsigned int value);
extern void BlitFadeAlt_Div2(void *, void *, int);
extern void BlitFadeAlt_Div4(void *, void *, int);
static inline void Fill_80008d8(void *dst, unsigned int size, unsigned int value)
{
    void *(*fill)(void *, unsigned int, unsigned int) = Func_80008d8;
    fill(dst, size, value);
}
void Task_BlitLuckyWheelsAnim(void)
{
    u8 *s = iwram_3001eec[0];

    if (*(int *)(s + 0x7824) == 1) {
        u8 *buf = iwram_3001eec[1];
        switch (*(int *)(s + 0x7780)) {
        case 1:
            DMA3_SET(buf, (void *)0x6003500, 0x84002000);
            Fill_80008d8(buf, 0x8000, *(int *)(s + 0x7784));
            break;
        case 2:
            if (*(int *)(s + 0x7784) == 0x32)
                BlitFadeAlt_Div2(buf, (void *)0x6003500, 0x8000);
            else
                BlitFadeAlt_Div4(buf, (void *)0x6003500, 0x8000);
            break;
        }
        *(int *)(s + 0x7824) = 0;
        *(int *)(s + 0x7820) = 1;
    } else {
        *(int *)(s + 0x7820) += 1;
    }
}
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f6148.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f61e8.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f62b8.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f6440.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f731c.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/LuckyWheelsMain.s");
struct ListNode {
    struct ListNode *prev;
    struct ListNode *next;
    unsigned int data;
};

/* Hash-chain LZ work buffer pointed to by ewram_2004c00. */
struct LZWork {
    struct ListNode nodes[0x400];
    struct ListNode *buckets[0x101];
    int window[0x400];
    int codeLen;
    unsigned char codeBuf[0x24];
    int matchDist;
    int matchLen;
    int winPos;
    int srcPos;
    int dstPos;
    int srcLen;
};

extern unsigned char ewram_2004c00[];

void Func_80f7db4(void)
{
    struct LZWork *w;
    struct ListNode **p;
    int i;

    w = *(struct LZWork **)ewram_2004c00;
    for (i = 0; i < 0x400; i++) {
        w->nodes[i].data = i;
        w->nodes[i].next = 0;
    }
    p = (*(struct LZWork **)ewram_2004c00)->buckets;
    for (i = 0; i < 0x100; i++) {
        *p++ = 0;
    }
}

void Func_80f7df0(unsigned int index)
{
    struct LZWork *w = *(struct LZWork **)ewram_2004c00;
    int c;

    w->nodes[index].next = (struct ListNode *)&w->buckets[c = w->window[index]];
    w->nodes[index].prev = w->buckets[c];
    w->buckets[c] = &w->nodes[index];
    if (w->nodes[index].prev != 0)
        w->nodes[index].prev->next = &w->nodes[index];
}

void Func_80f7e34(unsigned int index)
{
    struct ListNode **nextSlot;
    unsigned char *nodes = *(unsigned char **)ewram_2004c00;
    unsigned int prevOff = index * sizeof(struct ListNode);
    unsigned int nextOff = prevOff + 4;
    struct ListNode *next = *(struct ListNode **)(nodes + nextOff);
    struct ListNode **prevSlot;

    if (next != 0) {
        struct ListNode *prev = *(struct ListNode **)(nodes + prevOff);
        struct ListNode *nextNode;
        struct ListNode *prevNode;

        if (prev != 0)
            prev->next = next;
        nextSlot = (struct ListNode **)(nodes + nextOff);
        nextNode = *nextSlot;
        prevSlot = (struct ListNode **)(nodes + prevOff);
        prevNode = *prevSlot;
        nextNode->prev = prevNode;
    }
}
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f7e60.s");

void Func_80f7f30(unsigned char *dst)
{
    struct LZWork *w = *(struct LZWork **)ewram_2004c00;
    int i;

    for (i = 0; i != w->codeLen; i++) {
        dst[w->dstPos] = w->codeBuf[i];
        w->dstPos++;
    }
}

INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f7f78.s");

#include "nonmatching.h"

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
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Task_BlitLuckyWheelsAnim.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f6148.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f61e8.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f62b8.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f6440.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f731c.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/LuckyWheelsMain.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f7db4.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f7df0.s");
struct ListNode {
    struct ListNode *prev;
    struct ListNode *next;
    unsigned int data;
};

extern unsigned char ewram_2004c00[];

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
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f7f30.s");
INCLUDE_ASM("asm/lucky_wheels/lucky_wheels/Func_80f7f78.s");

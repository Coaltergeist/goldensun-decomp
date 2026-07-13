typedef struct ListNode ListNode;

struct ListNode {
    ListNode *previous;
    ListNode *next;
};

extern ListNode **ewram_2004c00;

void Func_80f7e34(int index)
{
    register ListNode **table asm("r1") = ewram_2004c00;
    register unsigned int offset asm("r3") = index * 3 * 4;
    register unsigned int nextOffset asm("r4") = offset + 4;
    register ListNode *next asm("r0") =
        *(ListNode **)((unsigned char *)table + nextOffset);

    if (next != 0) {
        register ListNode *previous asm("r2") =
            *(ListNode **)((unsigned char *)table + offset);

        if (previous != 0)
            previous->next = next;
        {
            register ListNode *finalNext asm("r2") =
                *(ListNode **)((unsigned char *)table + nextOffset);
            register ListNode *finalPrevious asm("r3") =
                *(ListNode **)((unsigned char *)table + offset);

            finalNext->previous = finalPrevious;
        }
    }
}

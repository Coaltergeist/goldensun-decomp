typedef unsigned char u8;

void RealClearChain(u8 *channel)
{
    register u8 *head asm("r3") = *(u8 **)(channel + 0x2c);
    register u8 *next asm("r1");
    register u8 *previous asm("r2");

    asm volatile (
        "cmp r3, #0\n\t"
        "beq .LRealClearChain_end"
        : "+r" (head));
    next = *(u8 **)(channel + 0x34);
    previous = *(u8 **)(channel + 0x30);
    asm volatile (
        "cmp r2, #0\n\t"
        "beq .LRealClearChain_head"
        : "+r" (previous)
        : "r" (next));
    *(u8 **)(previous + 0x34) = next;
    asm volatile (
        "b .LRealClearChain_join\n"
        ".LRealClearChain_head:");
    *(u8 **)(head + 0x20) = next;
    asm volatile (".LRealClearChain_join:");
    asm volatile (
        "cmp r1, #0\n\t"
        "beq .LRealClearChain_unlink"
        : "+r" (next)
        : "r" (previous));
    *(u8 **)(next + 0x30) = previous;
    asm volatile (".LRealClearChain_unlink:");
    next = 0;
    *(u8 **)(channel + 0x2c) = next;
    asm volatile (".LRealClearChain_end:");
}

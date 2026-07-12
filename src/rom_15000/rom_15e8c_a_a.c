extern unsigned char iwram_3001e8c[];

void *Func_8015e8c(void) {
    register unsigned char *base asm("r3") = *(unsigned char **)iwram_3001e8c;
    register unsigned int offset asm("r2") = 0xd98;
    register void **head asm("r1");
    register void **node asm("r0");

    asm volatile("" : "+r"(base), "+r"(offset));
    head = (void **)(base + offset);
    node = *head;
    asm volatile("" : "+r"(head), "+r"(node));
    if (node != 0) {
        register void *next asm("r2") = *node;

        asm volatile("" : "+r"(next));
        if (next == 0)
        {
            register unsigned int tailOffset asm("r4") = 0xd9c;

            asm volatile("" : "+r"(tailOffset));
            base += tailOffset;
            asm volatile("" : "+r"(base));
            *(void ***)base = head;
        }
        {
            register unsigned int zero asm("r3") = 0;

            asm volatile("" : "+r"(zero));
            *head = next;
            *node = (void *)zero;
        }
    }
    return node;
}

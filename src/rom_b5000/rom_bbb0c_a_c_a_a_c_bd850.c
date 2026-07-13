typedef void (*CopyTiles)(void *destination, unsigned int size);

extern unsigned char gSpriteSlots[];
extern void Func_80008d4(void);

void Func_80bd850(unsigned char *actor, unsigned int unused1,
                  unsigned int unused2, unsigned int unused3)
{
    unsigned int high_copy;
    register unsigned int high asm("r9");
    register unsigned char *actor_reg asm("r0") = actor;
    register unsigned int size asm("r1");
    register unsigned int destination asm("r2");
    register unsigned int work asm("r3");
    register CopyTiles copy asm("r3");

    high_copy = high;
    asm volatile ("" : "+m"(high_copy));
    work = actor_reg[0x1c];
    destination = (unsigned int)gSpriteSlots;
    work <<= 2;
    work += destination;
    destination = *(unsigned short *)(work + 2);
    work = 0x06010000;
    asm volatile ("" : "+r"(destination), "+r"(work));
    destination += work;
    asm volatile ("" : "+r"(destination));

    work = (unsigned int)actor_reg;
    work += 0x20;
    actor_reg += 0x21;
    size = *(unsigned char *)work;
    work = *actor_reg;
    actor_reg = (unsigned char *)destination;
    size *= work;
    copy = (CopyTiles)Func_80008d4;
    asm volatile ("" : "+r"(actor_reg), "+r"(size), "+r"(copy));
    copy(actor_reg, size);
}

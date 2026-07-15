typedef struct Actor {
    unsigned char pad00[0xc];
    int field0c;
    unsigned char pad10[8];
    int field18;
    int field1c;
    unsigned char pad20[0x1c];
    int field3c;
} Actor;

extern unsigned int Counters[] asm(".L3b40");
extern Actor *Actors[] asm(".L3b10");

void OvlFunc_897_200aba0(void)
{
    register unsigned int *counterLiteral asm("r14");
    register unsigned int *counterBase asm("r0");
    register Actor **actorBase asm("r12");
    register int largeStep asm("r5");
    register int smallStep asm("r6");
    register unsigned int i asm("r4");
    register unsigned int offset asm("r1");
    register unsigned int *counterLoad asm("r2");
    register Actor **actorLoad asm("r3");

    counterLoad = Counters;
    actorLoad = Actors;
    asm volatile("" : "+r"(counterLoad), "+r"(actorLoad));
    counterLiteral = counterLoad;
    largeStep = 0xa0;
    smallStep = 0x4ccc;
    i = 0;
    largeStep <<= 13;
    counterBase = counterLiteral;
    actorBase = actorLoad;
    offset = 0;

    do {
        register unsigned int count asm("r3");
        asm volatile("mov r7, r14\n\tldr r3, [r1, r7]"
                     : "=r"(count) : "r"(counterLiteral), "r"(offset));
        if (count != 0) {
            register Actor *actor asm("r2");
            asm volatile("mov r7, r12\n\tldr r2, [r7, r1]"
                         : "=r"(actor) : "r"(actorBase), "r"(offset));

            if (count <= 8) {
                actor->field18 += -0x1ccc;
                actor->field1c += 0x8000;
                actor->field0c += smallStep;
                actor->field3c += smallStep;
            } else {
                actor->field0c += largeStep;
                actor->field3c += largeStep;
            }
            (*(unsigned int *)((unsigned int)counterBase + offset))++;
            if (*(unsigned int *)((unsigned int)counterBase + offset) > 0xe)
                *(unsigned int *)((unsigned int)counterBase + offset) = 0;
        }
        i++;
        offset += 4;
    } while (i <= 9);
}

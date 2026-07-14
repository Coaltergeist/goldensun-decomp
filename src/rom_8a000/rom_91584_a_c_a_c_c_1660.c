extern unsigned char gState[];
extern unsigned char *GetFieldActor(unsigned int actorID);
extern void _Actor_SetAnim(unsigned char *actor, int animation);

void Func_8091660(void)
{
    register unsigned int state asm("r5") = (unsigned int)gState;
    register unsigned int off asm("r2") = 0xfa;
    register unsigned int work asm("r3");
    register unsigned char *actor asm("r0");

    asm volatile("" : "+r"(state), "+r"(off));
    off <<= 1;
    work = state + off;
    asm volatile("" : "+r"(work));
    actor = GetFieldActor(*(unsigned int *)work);

    work = 0x80;
    asm volatile("" : "+r"(work));
    work <<= 9;
    *(unsigned int *)(actor + 0x30) = work;

    work = 0x80;
    asm volatile("" : "+r"(work));
    work <<= 8;
    *(unsigned int *)(actor + 0x34) = work;

    work = 0x80;
    asm volatile("" : "+r"(work));
    work <<= 24;
    *(unsigned int *)(actor + 0x38) = work;
    *(unsigned int *)(actor + 0x40) = work;

    off = 0xf9;
    asm volatile("" : "+r"(off), "+r"(actor), "+r"(state));
    work = 0;
    *(unsigned int *)(actor + 0x24) = work;
    *(unsigned int *)(actor + 0x2c) = work;

    asm volatile("" : "+r"(off), "+r"(actor), "+r"(state));
    off <<= 1;
    work = state + off;
    asm volatile("" : "+r"(work));
    work = *(unsigned char *)work;

    if (work == 1) {
        _Actor_SetAnim(actor, 0xc);
    } else {
        _Actor_SetAnim(actor, 1);
    }
}

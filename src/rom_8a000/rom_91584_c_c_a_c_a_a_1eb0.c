extern unsigned int iwram_3001ebc;
extern unsigned char gState[];
extern unsigned short GetEncounterGroup(int encounterID, int group);
extern int GetFieldActor(int actorID);
extern void Func_808adf0(unsigned char *arg);
extern void Func_808b320(int a, int b);

void Func_8091eb0(int a0, int a1)
{
    unsigned char *base = (unsigned char *)iwram_3001ebc;
    register int off1 asm("r1");

    *(volatile unsigned short *)(base + (off1 = 0xbe * 2)) = GetEncounterGroup(a0, a1);
    asm volatile("" : "+r"(off1));

    if (a0 == 0x62 && a1 == 0) {
        unsigned char *gp;
        int val;
        gp = gState;
        __asm__ volatile ("ldr %0, =0x21" : "=r"(val));
        asm volatile("" : "+r"(gp));
        off1 += 0x5a;
        gp += off1;
        *(volatile unsigned short *)gp = (unsigned short)val;
    }

    {
        register int off2 asm("r2") = 0xcf * 2;
        short *sp;
        unsigned char *actor;
        unsigned char *gp2;

        asm volatile("" : "+r"(off2));
        sp = (short *)(base + off2);
        asm volatile("" : "+r"(sp));
        if (*sp == 3) {
            gp2 = gState;
            asm volatile("" : "+r"(gp2));
            off2 += 0x56;
            gp2 += off2;
            actor = (unsigned char *)GetFieldActor(*(volatile int *)gp2);
            Func_808adf0(actor + 8);
        }
    }

    Func_808b320(a0, a1);
}

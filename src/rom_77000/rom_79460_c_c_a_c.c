extern unsigned char Data_88e38[] asm(".L88e38");
extern unsigned char *GetEnemyInfo(int enemy);
extern unsigned char *GetPCBaseStats(int pc);

int Func_80797fc(int unit, unsigned char *stats, int *output)
{
    register int *write asm("r0") = (int *)unit;
    register unsigned char *statsReg asm("r1") = stats;
    register unsigned int temp asm("r2");
    register unsigned int work asm("r3");
    register int i asm("r5");
    register int *outputReg asm("r6");
    register int unitReg asm("r7");

    unitReg = (int)write;
    asm volatile("" : "+r"(write), "+r"(statsReg), "+r"(temp), "+r"(unitReg));
    outputReg = (int *)temp;
    asm volatile("" : "+r"(write), "+r"(statsReg), "+r"(outputReg), "+r"(unitReg));
    if (unitReg <= 7)
        goto party;

    write = (int *)GetEnemyInfo((int)write);
    write = (int *)((unsigned char *)write + 0x34);
    statsReg = (unsigned char *)(unsigned int)*(unsigned char *)write;
    if ((unsigned int)statsReg > 0x2b)
        statsReg = 0;
    work = (unsigned int)statsReg << 1;
    work += (unsigned int)statsReg;
    temp = (unsigned int)Data_88e38;
    work <<= 3;
    work += temp;
    i = 0;
    write = outputReg;
    statsReg = (unsigned char *)(work + 4);
    do {
        temp = *statsReg;
        work = temp << 2;
        work += temp;
        work <<= 1;
        i++;
        statsReg++;
        *write++ = work;
    } while (i <= 3);
    goto done;

party:
    write = outputReg;
    statsReg += 0x24;
    i = 3;
party_loop:
    temp = *statsReg;
    work = temp << 2;
    work += temp;
    work <<= 1;
    i--;
    statsReg++;
    *write++ = work;
    if (i >= 0)
        goto party_loop;
    if (unitReg > 7)
        goto done;
    i = 0;
pc_loop:
    write = (int *)unitReg;
    write = (int *)GetPCBaseStats((int)write);
    work = i;
    work += 0x90;
    write = (int *)((unsigned char *)write + 2);
    temp = *((unsigned char *)write + work);
    work = *outputReg;
    i++;
    work += temp;
    *outputReg++ = work;
    if (i <= 3)
        goto pc_loop;

done:
    return 0;
}

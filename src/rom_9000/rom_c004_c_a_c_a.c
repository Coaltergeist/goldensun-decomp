void Func_800c548(unsigned char *actor, int value)
{
    register unsigned char *data asm("r0") = actor;
    register int valueReg asm("r1") = value;
    register int byte asm("r2");
    register int work asm("r3");

    asm("" : "+r"(data), "+r"(valueReg));
    if (data == 0)
        return;
    work = data[0x54];
    if (work != 1)
        return;
    data = *(unsigned char **)(data + 0x50);
    work = 3;
    asm volatile("" : "+r"(data), "+r"(valueReg), "+r"(work));
    valueReg &= work;
    asm volatile("" : "+r"(data), "+r"(valueReg));
    byte = data[5];
    work = 0xd;
    asm volatile("" : "+r"(data), "+r"(valueReg), "+r"(byte), "+r"(work));
    work = -work;
    valueReg <<= 2;
    work &= byte;
    work |= valueReg;
    data[5] = work;
}

void Func_800c570(unsigned char *actor, int value)
{
    register unsigned char *data asm("r0") = actor;
    register int valueReg asm("r1") = value;
    register int byte asm("r2");
    register int work asm("r3");

    asm("" : "+r"(data), "+r"(valueReg));
    if (data == 0)
        return;
    work = data[0x54];
    if (work != 1)
        return;
    data = *(unsigned char **)(data + 0x50);
    work = 1;
    asm volatile("" : "+r"(data), "+r"(valueReg), "+r"(work));
    valueReg &= work;
    asm volatile("" : "+r"(data), "+r"(valueReg));
    byte = data[0x1d];
    work = 3;
    asm volatile("" : "+r"(data), "+r"(valueReg), "+r"(byte), "+r"(work));
    work = -work;
    valueReg <<= 1;
    work &= byte;
    work |= valueReg;
    data[0x1d] = work;
}

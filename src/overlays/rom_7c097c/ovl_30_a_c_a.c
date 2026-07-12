extern unsigned int __Random(void);
extern unsigned char gState[];
extern unsigned char Value_63[] asm("0x63");
extern unsigned char Value_66[] asm("0x66");
extern unsigned char Value_99[] asm("0x99");
extern unsigned char Value_9a[] asm("0x9a");
extern unsigned char Value_9b[] asm("0x9b");
extern unsigned char Value_9c[] asm("0x9c");
extern unsigned char Result_63[] asm(".L42c8");
extern unsigned char Result_66[] asm(".L4448");
extern unsigned char Result_99[] asm(".L44a8");
extern unsigned char Result_9a[] asm(".L4520");
extern unsigned char Result_9b[] asm(".L4580");
extern unsigned char Result_9c[] asm("gScript_943__0200c628");
extern unsigned char Result_default[] asm(".L4298");

int OvlFunc_936_20080ac(unsigned char *actor)
{
    register unsigned char *actorReg asm("r5") = actor;
    register unsigned short *timer asm("r6") =
        (unsigned short *)(actorReg + 0x66);
    register int offset asm("r1") = 0;
    register int signedValue asm("r3");
    register int value asm("r2");

    asm volatile("" : "+r"(offset));
    signedValue = *(short *)((unsigned char *)timer + offset);
    value = *timer;

    if (signedValue == 0) {
        register unsigned int result asm("r3");

        *(unsigned short *)(actorReg + 6) += (__Random() << 15) >> 16;
        result = (__Random() * 80) >> 16;
        asm volatile("" : "+r"(result));
        *timer = result;
        if (result == 0)
            goto done;
        value = result;
    }
    {
        register int decremented asm("r3") = value - 1;

        asm volatile("" : "+r"(decremented));
        *timer = decremented;
    }
done:
    return 1;
}

void *OvlFunc_936_20080ec(void)
{
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_63;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_63;
        goto done;
    }
    address = (unsigned int)Value_66;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_66;
        goto done;
    }
    address = (unsigned int)Value_99;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_99;
        goto done;
    }
    address = (unsigned int)Value_9a;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_9a;
        goto done;
    }
    address = (unsigned int)Value_9b;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_9b;
        goto done;
    }
    address = (unsigned int)Value_9c;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_9c;
    else
        result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}

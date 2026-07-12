extern unsigned char gState[];
extern int __GetPartySize(void);
extern int __GetFlag(int flag);

int OvlFunc_971_2008f30(int wanted) {
    register int wantedReg asm("r7") = wanted;
    register int count asm("r5");
    register int cap asm("r6");
    register int flag asm("r0");
    register int i asm("r1");
    register unsigned int work asm("r3");
    register unsigned int offset asm("r0");
    register unsigned char *memberPtr asm("r2");
    register unsigned char *scan asm("r0");

    asm volatile("" : "+r"(wantedReg));
    count = __GetPartySize();
    asm volatile("" : "+r"(count));
    flag = 0xb9;
    flag <<= 1;
    asm volatile("" : "+r"(flag));
    cap = 3;
    asm volatile("" : "+r"(cap));
    if (__GetFlag(flag) == 0)
        cap = 4;
    if (count > cap)
        count = cap;

    i = 0;
    asm volatile("" : "+r"(i));
    if (i >= count)
        goto no_match;

    work = (unsigned int)gState;
    offset = 0xfc;
    offset <<= 1;
    memberPtr = (unsigned char *)(work + offset);
    scan = memberPtr;
    asm("" : "+r"(scan), "+r"(memberPtr));
loop:
        work = *scan;
        scan++;
        if (work == 0xff)
            goto no_match;
        work = *memberPtr;
        if (work != wantedReg)
            goto next;
        return 1;
next:
        i++;
        memberPtr++;
    if (i < count)
        goto loop;
no_match:
    return 0;
}

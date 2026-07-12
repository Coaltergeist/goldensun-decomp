extern unsigned char gState[];
extern int GetPartySize(void);
extern void SetFlag(unsigned int flag);
extern void ClearFlag(unsigned int flag);

int AddPartyMember(unsigned int member) {
    int count = GetPartySize();
    int i;

    SetFlag(member);
    for (i = 0; i < count; i++) {
        if (gState[0x1f8 + i] == member) {
            return count;
        }
    }
    gState[0x1f8 + i] = member;
    return count + 1;
}

int Func_8079664(unsigned int member) {
    register unsigned int memberReg asm("r5") = member;
    register int count asm("r6");
    int i;

    count = GetPartySize();
    asm("" : "+r"(count), "+r"(memberReg));
    ClearFlag(memberReg);
    for (i = 0; i < count; i++) {
        if (gState[0x1f8 + i] == memberReg) {
            break;
        }
    }
    while (i < count - 1) {
        gState[0x1f8 + i] = gState[0x1f8 + i + 1];
        i++;
    }
    asm volatile("" : : "r"(count));
    return GetPartySize();
}

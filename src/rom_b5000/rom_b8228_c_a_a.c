extern unsigned char *GetBattleActor(int actor);
extern void Func_80b83b0(int *position, int scale);

void Func_80b83b4(int firstID, int secondID) {
    int midpoint[3];
    register int secondReg asm("r5") = secondID;
    register unsigned char *first asm("r6");
    register unsigned char *second asm("r0");
    register int invalid asm("r4");
    register int firstX asm("r2");
    register int firstZ asm("r5");
    register int secondX asm("r3");
    register int secondZ asm("r1");
    register int *position asm("r0");

    asm("" : "+r"(secondReg));
    first = *(unsigned char **)GetBattleActor(firstID);
    asm volatile("" : "+r"(first), "+r"(secondReg));
    second = GetBattleActor(secondReg);
    invalid = 0x80;
    asm volatile("" : "+r"(first), "+r"(second), "+r"(invalid));
    firstX = *(int *)(first + 0x38);
    asm volatile("" : "+r"(first), "+r"(second), "+r"(invalid), "+r"(firstX));
    invalid <<= 24;
    asm volatile("" : "+r"(first), "+r"(second), "+r"(invalid), "+r"(firstX));
    second = *(unsigned char **)second;
    if (firstX == invalid)
        firstX = *(int *)(first + 8);
    firstZ = *(int *)(first + 0x40);
    if (firstZ == invalid)
        firstZ = *(int *)(first + 0x10);
    secondX = *(int *)(second + 0x38);
    if (secondX == invalid)
        secondX = *(int *)(second + 8);
    secondZ = *(int *)(second + 0x40);
    if (secondZ == invalid)
        secondZ = *(int *)(second + 0x10);
    secondX = firstX + secondX;
    firstX = (unsigned int)secondX >> 31;
    secondX += firstX;
    position = midpoint;
    secondX >>= 1;
    position[0] = secondX;
    secondX = 0;
    position[1] = secondX;
    secondX = firstZ + secondZ;
    firstX = (unsigned int)secondX >> 31;
    secondX += firstX;
    secondX >>= 1;
    secondZ = 0x80;
    position[2] = secondX;
    secondZ <<= 5;
    Func_80b83b0(position, secondZ);
}

typedef unsigned char u8;

extern u8 iwram_3001ebc[];

/* 指定座標にいるアクターを検索 */
void *OvlFunc_968_200832c(const int *position)
{
    register const int *positionReg asm("r4");
    register u8 **tableAddress asm("r3");
    register u8 *table asm("r2");
    register int rawX asm("r3");
    register void **entry asm("r1");
    register unsigned int index asm("r5");
    register int positionX asm("r6");

    tableAddress = (u8 **)iwram_3001ebc;
    asm volatile("" : "+r"(tableAddress));
    positionReg = position;
    asm volatile("" : "+r"(positionReg), "+r"(tableAddress));
    table = *tableAddress;
    rawX = positionReg[0];
    asm volatile("" : "+r"(table), "+r"(rawX));
    entry = (void **)table;
    asm volatile("" : "+r"(entry), "+r"(rawX));
    index = 8;
    asm volatile("" : "+r"(positionReg), "+r"(table), "+r"(rawX));
    asm volatile("" : "+r"(entry), "+r"(index));
    positionX = rawX >> 20;
    entry = (void **)((u8 *)entry + 0x34);

    do {
        u8 *actor = *entry++;
        if (positionX == *(int *)(actor + 8) >> 20 &&
            positionReg[1] >> 20 == *(int *)(actor + 0xc) >> 20 &&
            positionReg[2] >> 20 == *(int *)(actor + 0x10) >> 20)
            return actor;
        ++index;
    } while (index <= 0x41);
    return 0;
}

typedef unsigned int u32;

extern int OvlFunc_943_200b150(int index);
extern int OvlFunc_943_200b464(int index);
extern u32 resultTable[] asm(".L5b70");

void OvlFunc_943_200b3b8(void)
{
    unsigned i;

    for (i = 0; i <= 3; i++) {
        if (OvlFunc_943_200b150(i))
            resultTable[i] = OvlFunc_943_200b464(i);
        else
            resultTable[i] = 3;
    }

    if (OvlFunc_943_200b150(0))
        resultTable[0] = OvlFunc_943_200b464(0);
    else
        resultTable[0] = 3;
    if (OvlFunc_943_200b150(2))
        resultTable[1] = OvlFunc_943_200b464(2);
    else
        resultTable[1] = 3;
    resultTable[2] = 3;
    resultTable[3] = 3;
    if (OvlFunc_943_200b150(1))
        resultTable[4] = OvlFunc_943_200b464(1);
    else
        resultTable[4] = 3;
    if (OvlFunc_943_200b150(3))
        resultTable[5] = OvlFunc_943_200b464(3);
    else
        resultTable[5] = 3;
    resultTable[6] = 3;
    resultTable[7] = 3;
}

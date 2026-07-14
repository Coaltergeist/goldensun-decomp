extern int sin(int);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];

void Func_8096d84(void *arg0)
{
    char *actor = arg0;
    char *target;
    unsigned short *counterPtr;
    int newCounter;
    short count;
    int sinVal;

    counterPtr = (unsigned short *)(actor + 0x64);
    newCounter = *counterPtr + 1;
    asm volatile("" ::: "memory");
    target = *(char **)(actor + 0x68);
    asm volatile("" ::: "memory");
    *counterPtr = newCounter;
    count = newCounter;
    if (count > 0x1f) {
        _Actor_SetScript(actor, Data_9f0b0);
    } else {
        sinVal = sin(count << 10);
        *(int *)(actor + 0x18) = sinVal;
        *(int *)(actor + 0x1c) = -sinVal;
        *(int *)(actor + 8) = *(int *)(target + 8);
        *(int *)(actor + 0xc) = *(int *)(actor + 0xc) + 0x10000;
        *(int *)(actor + 0x10) = *(int *)(target + 0x10) - (0x10000 - sinVal) * 5 + 0x100000;
    }
}

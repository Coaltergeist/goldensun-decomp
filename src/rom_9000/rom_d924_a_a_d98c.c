typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e64;
extern int Func_800eba0(void *, int, int, int);

void *Func_800d98c(void *argument, int value)
{
    register u8 *entry asm("r5") = iwram_3001e64;
    register u8 *flags asm("r6") = entry;
    void *target = argument;
    register int input asm("r8") = value;
    int i = 0;

    flags += 0x59;
    do {
        if (*(int *)entry != 0 && (*flags & 1) != 0 && entry != target &&
            Func_800eba0(entry + 8, *(u16 *)(entry + 0x20) - 2, input,
                         *(u16 *)((u8 *)target + 0x20) - 2) >= 0)
            return entry;
        i++;
        flags += 0x70;
        entry += 0x70;
    } while (i <= 0x3f);
    return 0;
}

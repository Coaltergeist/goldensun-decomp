extern unsigned char UnitTable[] __asm__(".L7b490");
extern int Func_8078aa0(int unit);

int Func_8078ad0(unsigned int unit)
{
    int mapped = UnitTable[unit & 0x1ff];
    register int result asm("r4") = 0;

    if (mapped != 0)
        result = Func_8078aa0(mapped - 1);
    return result;
}

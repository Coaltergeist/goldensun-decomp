/* Cluster Func_808d428..Func_808d458 extracted from goldensun/asm/rom_8a000/rom_8ba38.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ba38_a.o and asm/rom_8a000/rom_8ba38_c.o in
 * goldensun/stage1.ld.
 */
extern int _GetFlag(void);

unsigned int Func_808d428(int x)
{
    int v;
    if (x == -1)
        return 1;
    if (x & 0x1000)
        return _GetFlag();
    v = _GetFlag();
    return 1 - (((unsigned int)(-v | v)) >> 31);
}
unsigned int Func_808d458(unsigned int arg0, unsigned int arg1)
{
    unsigned int a;
    unsigned int b;

    if ((arg0 & 0xf) != 3)
        return 0;
    if ((arg0 & 0x1ff) == 3)
        return 0;
    a = (arg1 & 0xfff00000) ^ (0xa0 << 15);
    b = -a;
    return (b | a) >> 31;
}

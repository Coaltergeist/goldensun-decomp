/* Cluster Func_80a1814..Func_80a1814 extracted from goldensun/asm/rom_a1000/rom_a1814_a.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_a_a.o and asm/rom_a1000/rom_a1814_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80a10d0(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int LoadUIHandCursorGFX(unsigned int, unsigned int, unsigned int);

unsigned int Func_80a1814(unsigned int arg0)
{
    unsigned int zero;
    unsigned int box;
    unsigned int ret;
    unsigned int tmp;
    unsigned char state;
    int v;

    zero = 0;
    *(unsigned int *)(arg0 + 0x10) = zero;
    Func_80a10d0(arg0 + 0x10, 0, 0, 0xd, 5, 2);
    box = *(unsigned int *)(arg0 + 0x10);
    ret = LoadUIHandCursorGFX(box, -8, 0xb);
    *(unsigned char *)(ret + 5) = 0xd;
    *(unsigned char *)(arg0 + 0x1c) = 0xff;
    *(unsigned char *)(arg0 + 0x1d) = zero;
    *(unsigned int *)(arg0 + 0x14) = ret;
    state = 0xfe;
    *(unsigned char *)(ret + 0xf) = state;
    tmp = *(unsigned int *)(arg0 + 0x18);
    v = state - 0xff;
    *(unsigned char *)(tmp + 0xf) = v;
    return box;
}

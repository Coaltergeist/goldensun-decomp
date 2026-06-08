/* Cluster Func_8095bac..Func_8095bd8 extracted from goldensun/asm/rom_8a000/rom_944ec_a_c_a.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_a_a.o and asm/rom_8a000/rom_944ec_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void _DeleteActor(void);

void Func_8095bac(unsigned int arg0)
{
    short *p;
    unsigned int v2;
    unsigned short v3;

    p = (short *)((char *)arg0 + 0x64);
    v2 = (unsigned int)((*p * 5) << 4);
    v3 = *(unsigned short *)((char *)arg0 + 6);
    *(unsigned short *)((char *)arg0 + 6) = v3 + v2 + 0x1000;
    if (v2 < 0x1000)
        (*(unsigned short *)p)++;
}
void Func_8095bd8(unsigned char *p)
{
    int v1c;
    int v18;
    unsigned short v6;

    v1c = *(int *)(p + 0x1c) + (int)0xfffffe40;
    v18 = *(int *)(p + 0x18) + (int)0xfffffe40;
    *(int *)(p + 0x1c) = v1c;
    v6 = *(unsigned short *)(p + 6) + (0x80 << 6);
    *(unsigned short *)(p + 6) = v6;
    *(int *)(p + 0x18) = v18;
    if (v18 < (0xc0 << 6))
        _DeleteActor();
}

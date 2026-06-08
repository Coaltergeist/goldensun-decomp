/* Cluster Func_8095f9c..Func_8095f9c extracted from goldensun/asm/rom_8a000/rom_944ec_a_c_a_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_a_c_a.o and asm/rom_8a000/rom_944ec_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _DeleteActor(void);

void Func_8095f9c(unsigned char *p)
{
    int v1c;
    int v18;
    unsigned short h6;
    int limit;

    v1c = *(int *)(p + 0x1c) - 0x400;
    v18 = *(int *)(p + 0x18) - 0x400;
    *(int *)(p + 0x1c) = v1c;
    h6 = *(unsigned short *)(p + 6) + (0x80 << 6);
    *(unsigned short *)(p + 6) = h6;
    limit = 0xc0 << 6;
    *(int *)(p + 0x18) = v18;
    if (v18 < limit)
        _DeleteActor();
}

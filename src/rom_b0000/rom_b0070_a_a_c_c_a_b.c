/* Cluster Func_80b0a6c..Func_80b0a6c extracted from goldensun/asm/rom_b0000/rom_b0070_a_a_c_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a_c_c_a_a.o and asm/rom_b0000/rom_b0070_a_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];   /* @ 0x03001F2C */
extern void Func_80b09fc(void *arg0, unsigned int arg1, unsigned int arg2, int arg3);

void Func_80b0a6c(void *arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *base = *(unsigned char **)iwram_3001f2c;

    if (arg0 != 0) {
        arg1 = arg1 + (*(unsigned short *)((char *)arg0 + 0xc) << 3) + 8;
        arg2 = arg2 + (*(unsigned short *)((char *)arg0 + 0xe) << 3) + 8;
    }
    Func_80b09fc(base + 0x380, arg1, arg2, *(signed char *)(base + 0x3a8));
}

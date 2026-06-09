/* Cluster Func_807987c..Func_807987c extracted from goldensun/asm/rom_77000/rom_79460_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_a.o and asm/rom_77000/rom_79460_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetUnit(unsigned int unit);
extern int Func_80797fc(unsigned int a, unsigned char *b, unsigned char *c);

int Func_807987c(unsigned int arg0, int arg1)
{
    unsigned char *p;
    int buf[4];
    int ret;

    p = (unsigned char *)GetUnit(arg0);
    ret = 0;
    if (arg1 <= 3) {
        Func_80797fc(*(unsigned char *)(p + 0x128), p + 0xf8, (unsigned char *)buf);
        ret = buf[arg1] / 0xa;
    }
    return ret;
}

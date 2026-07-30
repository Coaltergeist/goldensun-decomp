/* Cluster Func_801c304..Func_801c304 extracted from goldensun/asm/rom_15000/rom_1aeec_c_a_a_a_a_a_c_c_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_c_a_a_a_a_a_c_c_c_a.o and asm/rom_15000/rom_1aeec_c_a_a_a_a_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001e98;
extern void Func_801a7f4(void);
extern void Func_801b228(void);
extern void Func_801b010(int a, int b);
extern void Func_801a968(void);
extern int Func_801b424(int a);
extern void Func_801b148(void);

int Func_801c304(unsigned short param_1)
{
    unsigned char *base;
    unsigned char *addr1;
    unsigned short v;
    int result;

    base = iwram_3001e98;
    addr1 = base + 0x39e;
    *(unsigned short *)addr1 = param_1;
    base += 0xee << 2;
    v = 1;
    *(unsigned short *)base = v;
    Func_801a7f4();
    Func_801b228();
    Func_801b010(0, 5);
    Func_801a968();
    result = Func_801b424(1);
    Func_801b148();
    return result;
}

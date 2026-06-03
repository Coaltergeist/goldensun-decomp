/* Cluster Func_80789dc..Func_8078a08 extracted from goldensun/asm/rom_77000/rom_78414_c_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_c_a.o and asm/rom_77000/rom_78414_c_c_c.o in
 * goldensun/stage1.ld.
 * Reconciled conflicting decls of Func_8078698: kept `extern int Func_8078698(int item);`, dropped `extern int Func_8078698(unsigned int item);`.
 * Reconciled conflicting decls of Func_8078664: kept `extern int Func_8078664(int pc, int item);`, dropped `extern int Func_8078664(int pc, unsigned int item);`.
 */
extern int Func_8078698(int item);
extern int Func_8078664(int pc, int item);
extern int Func_80788c4(int a, int b);
extern void Func_8078948(int a, int b);

unsigned int Func_80789dc(unsigned int arg0)
{
    int r5;

    r5 = Func_8078698(arg0);
    if (r5 == -1)
        return 0;
    Func_80788c4(r5, Func_8078664(r5, arg0));
    return 0;
}
unsigned int Func_8078a08(unsigned int arg0)
{
    int r5;

    r5 = Func_8078698(arg0);
    if (r5 == -1)
        return 0;
    Func_8078948(r5, Func_8078664(r5, arg0));
    return 0;
}

/* Cluster Func_80789dc..Func_8078a08 extracted from goldensun/asm/rom_77000/rom_78414_c_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_c_a.o and asm/rom_77000/rom_78414_c_c_c.o in
 * goldensun/stage1.ld.
 * Reconciled conflicting decls of CheckPartyItem: kept `extern int CheckPartyItem(int item);`, dropped `extern int CheckPartyItem(unsigned int item);`.
 * Reconciled conflicting decls of CheckItem: kept `extern int CheckItem(int pc, int item);`, dropped `extern int CheckItem(int pc, unsigned int item);`.
 */
extern int CheckPartyItem(int item);
extern int CheckItem(int pc, int item);
extern int Func_80788c4(int a, int b);
extern void Func_8078948(int a, int b);

unsigned int Func_80789dc(unsigned int arg0)
{
    int r5;

    r5 = CheckPartyItem(arg0);
    if (r5 == -1)
        return 0;
    Func_80788c4(r5, CheckItem(r5, arg0));
    return 0;
}
unsigned int Func_8078a08(unsigned int arg0)
{
    int r5;

    r5 = CheckPartyItem(arg0);
    if (r5 == -1)
        return 0;
    Func_8078948(r5, CheckItem(r5, arg0));
    return 0;
}

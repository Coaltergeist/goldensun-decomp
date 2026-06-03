/* Cluster Func_80792c4..Func_80792fc extracted from goldensun/asm/rom_77000/rom_79008.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79008_a.o and asm/rom_77000/rom_79008_c.o in
 * goldensun/stage1.ld.
 * Reconciled conflicting decls of Func_8077394: kept `extern unsigned char *Func_8077394(unsigned int unit);`, dropped `extern int Func_8077394(int unit);`.
 * Reconciled conflicting decls of Func_807905c: kept `extern unsigned int Func_807905c(unsigned int arg0, unsigned int arg1);`, dropped `extern void Func_807905c(int pcID, int *buf);`.
 */
extern unsigned char *Func_8077394(unsigned int unit);
extern unsigned int Func_8079008(unsigned int arg0, unsigned int arg1);
extern unsigned int Func_807905c(unsigned int arg0, unsigned int arg1);
extern void Func_8077428(int pc);

unsigned int Func_80792c4(unsigned int arg0, unsigned int arg1)
{
    unsigned char *unit;

    unit = Func_8077394(arg0);
    if (*(unsigned int *)(unit + 0x124) >= Func_8079008(arg0, *(unsigned char *)(unit + 0xf) + 1))
    {
        if (Func_807905c(arg0, arg1))
            return arg1;
    }
    return 0;
}
void Func_80792fc(int pcID, unsigned int level) {
    unsigned char *unit;
    int curLevel;
    int buf[4];

    unit = (unsigned char *)Func_8077394(pcID);
    curLevel = unit[15];
    while (curLevel < (int)level) {
        Func_807905c(pcID, buf);
        curLevel++;
    }
    Func_8077428(pcID);
}

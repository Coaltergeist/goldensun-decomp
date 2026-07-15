typedef unsigned short u16;

extern int _Func_80796c4(u16 *party);
extern unsigned char *_GetUnit(int unitId);
extern unsigned char *_GetMoveInfo(unsigned int move);

int Func_801c7fc(u16 *out)
{
    register u16 *outp asm("r0") = out;
    register int ret asm("r0");
    register int r7pin asm("r7");

    asm volatile(
        "\tsub\tsp, #0x28\n"
        "\tstr\tr0, [sp, #8]\n"
        "\tadd\tr5, sp, #0xc\n"
        "\tmov\tr0, #0\n"
        "\tmov\tr9, r0\n"
        "\tmov\tr0, r5\n"
        "\tbl\t_Func_80796c4\n"
        "\tcmp\tr9, r0\n"
        "\tbge\t.Lend_c7fc\n"
        "\tmov\tr11, r5\n"
        "\tmov\tr10, r0\n"
        ".Lmember_c7fc:\n"
        "\tmov\tr3, r11\n"
        "\tldrh\tr3, [r3]\n"
        "\tmov\tr0, #2\n"
        "\tmov\tr8, r3\n"
        "\tadd\tr11, r0\n"
        "\tmov\tr0, r8\n"
        "\tbl\t_GetUnit\n"
        "\tmov\tr3, #0x58\n"
        "\tldr\tr2, =0x3fff\n"
        "\tldrh\tr3, [r0, r3]\n"
        "\tmov\tr5, r2\n"
        "\tand\tr5, r3\n"
        "\tmov\tr1, #0\n"
        "\tcmp\tr5, #0\n"
        "\tbeq\t.Lnext_c7fc\n"
        "\tmov\tr7, r0\n"
        "\tmov\tr0, r9\n"
        "\tlsl\tr3, r0, #2\n"
        "\tldr\tr0, [sp, #8]\n"
        "\tadd\tr7, #0x58\n"
        "\tadd\tr6, r3, r0\n"
        "\tb\t.Lmove_c7fc\n"
        "\t.align\t2, 0\n"
        "\t.pool\n"
        ".Lmove_c7fc:\n"
        "\tmov\tr0, r5\n"
        "\tstr\tr1, [sp, #4]\n"
        "\tstr\tr2, [sp]\n"
        "\tbl\t_GetMoveInfo\n"
        "\tldr\tr1, [sp, #4]\n"
        "\tmov\tr3, r8\n"
        "\tmov\tr0, #1\n"
        "\tadd\tr1, #1\n"
        "\tstrh\tr3, [r6]\n"
        "\tstrh\tr5, [r6, #2]\n"
        "\tadd\tr9, r0\n"
        "\tadd\tr6, #4\n"
        "\tldr\tr2, [sp]\n"
        "\tcmp\tr1, #0x1f\n"
        "\tbgt\t.Lnext_c7fc\n"
        "\tadd\tr7, #4\n"
        "\tldrh\tr3, [r7]\n"
        "\tmov\tr5, r2\n"
        "\tand\tr5, r3\n"
        "\tcmp\tr5, #0\n"
        "\tbne\t.Lmove_c7fc\n"
        ".Lnext_c7fc:\n"
        "\tmov\tr3, #1\n"
        "\tneg\tr3, r3\n"
        "\tadd\tr10, r3\n"
        "\tmov\tr0, r10\n"
        "\tcmp\tr0, #0\n"
        "\tbne\t.Lmember_c7fc\n"
        ".Lend_c7fc:\n"
        "\tmov\tr0, r9\n"
        "\tadd\tsp, #0x28\n"
        : "=r"(ret), "=r"(r7pin)
        : "r"(outp)
        : "r1", "r2", "r3", "r5", "r6", "r8", "r9", "r10", "r11", "lr",
          "cc", "memory");
    return ret;
}

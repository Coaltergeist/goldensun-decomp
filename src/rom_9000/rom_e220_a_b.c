/* Cluster Func_800e220..Func_800e308 extracted from goldensun/asm/rom_9000/rom_e220_a.s.
 *
 * Total .text for this TU = 276 bytes (= 0x114).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_e220_a_a.o and asm/rom_9000/rom_e220_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_800e220(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char v;
    if (op == 0) {
        *(unsigned int *)actor = param;
    } else if (op == 1) {
        *(unsigned int *)actor += param << 2;
    } else {
        v = (*(unsigned int *)actor == param);
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void Func_800e24c(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char eq;
    if (op == 0) {
        *(unsigned short *)(actor + 4) = param;
    } else if (op == 1) {
        *(unsigned short *)(actor + 4) += param;
    } else {
        eq = (*(short *)(actor + 4) == (short)param);
        actor[0x57] = eq;
    }
}
void Func_800e280(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned short v;
    if (op == 0) {
        *(unsigned short *)(actor + 6) = param;
    } else if (op == 1) {
        *(unsigned short *)(actor + 6) += param;
    } else {
        v = 0;
        if (*(unsigned short *)(actor + 6) == (unsigned short)param)
            v = 1;
        actor[0x57] = v;
    }
}
void Func_800e2b0(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;
    if (op == 0) {
        *(unsigned int *)(actor + 8) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 8) += param;
    } else {
        v = (*(unsigned int *)(actor + 8) == param);
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void Func_800e2dc(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char eq;
    if (op == 0) {
        *(unsigned int *)(actor + 0xc) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0xc) += param;
    } else {
        eq = 0;
        if (*(unsigned int *)(actor + 0xc) == param)
            eq = 1;
        *(actor + 0x57) = eq;
    }
}
void Func_800e308(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;
    if (op == 0) {
        *(unsigned int *)(actor + 0x10) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x10) += param;
    } else {
        val = 0;
        if (*(unsigned int *)(actor + 0x10) == param)
            val = 1;
        *(actor + 0x57) = val;
    }
}

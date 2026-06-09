/* Cluster ActorAttrOp_extra..ActorAttrOp_unk63 extracted from goldensun/asm/rom_9000/rom_e220_c.s.
 *
 * Total .text for this TU = 208 bytes (= 0xd0).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_e220_c_a.o and asm/rom_9000/rom_e220_c_c.o in
 * goldensun/stage1.ld.
 */
void ActorAttrOp_extra(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)(actor + 0x68) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x68) += param;
    } else {
        unsigned int v;
        v = 0;
        if (*(unsigned int *)(actor + 0x68) == param)
            v = 1;
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_updateFn(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x6c) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x6c) += param;
    } else {
        unsigned int v;
        v = 0;
        if (*(unsigned int *)((char *)actor + 0x6c) == param)
            v = 1;
        *(unsigned char *)((char *)actor + 0x57) = v;
    }
}
void ActorAttrOp_unk62(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        actor[0x62] = param;
    } else if (op == 1) {
        actor[0x62] += param;
    } else {
        val = (actor[0x62] == (unsigned char)param);
        actor[0x57] = val;
    }
}
void ActorAttrOp_unk63(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[0x63] = param;
    } else if (op == 1) {
        actor[0x63] += param;
    } else {
        unsigned int flag;
        flag = 0;
        if (actor[0x63] == (unsigned char)param)
            flag = 1;
        actor[0x57] = flag;
    }
}

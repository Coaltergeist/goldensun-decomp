/* Cluster ActorAttrOp_scaleX..ActorAttrOp_unk5D extracted from goldensun/asm/rom_9000/rom_e220.s.
 *
 * Total .text for this TU = 1196 bytes (= 0x4ac).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_e220_a.o and asm/rom_9000/rom_e220_c.o in
 * goldensun/stage1.ld.
 */
extern void ActorAttrOp_scaleX(unsigned char *actor, unsigned int op, unsigned int param);

void ActorAttrOp_scaleX(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;

    if (op == 0) {
        *(unsigned int *)(actor + 0x18) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x18) += param;
    } else {
        v = 0;
        if (*(unsigned int *)(actor + 0x18) == param)
            v = 1;
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_scaleY(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[7] = param;
    } else if (op == 1) {
        actor[7] += param;
    } else {
        unsigned char val;
        val = 0;
        if (actor[7] == param)
            val = 1;
        *((unsigned char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_motionX(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned int *)(actor + 0x24) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x24) += param;
    } else {
        val = 0;
        if (*(unsigned int *)(actor + 0x24) == param)
            val = 1;
        *(unsigned char *)(actor + 0x57) = val;
    }
}
void ActorAttrOp_motionY(unsigned int *actor, unsigned int op, unsigned int param)
{
    unsigned char eq;
    if (op == 0) {
        actor[10] = param;
    } else if (op == 1) {
        actor[10] += param;
    } else {
        eq = (actor[10] == param);
        *((unsigned char *)actor + 0x57) = eq;
    }
}
void ActorAttrOp_motionZ(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[11] = param;
    } else if (op == 1) {
        actor[11] += param;
    } else {
        unsigned char b = (actor[11] == param);
        *((unsigned char *)actor + 0x57) = b;
    }
}
void ActorAttrOp_speed(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)(actor + 0x30) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x30) += param;
    } else {
        unsigned char val;
        val = 0;
        if (*(unsigned int *)(actor + 0x30) == param)
            val = 1;
        *(unsigned char *)(actor + 0x57) = val;
    }
}
void ActorAttrOp_accel(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;

    if (op == 0) {
        *(unsigned int *)(actor + 0x34) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x34) += param;
    } else {
        v = 0;
        if (*(unsigned int *)(actor + 0x34) == param)
            v = 1;
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_prevPosX(unsigned int *actor, unsigned int op, unsigned int param)
{
    unsigned char r1;
    if (op == 0) {
        actor[14] = param;
    } else if (op == 1) {
        actor[14] += param;
    } else {
        r1 = (actor[14] == param);
        *((unsigned char *)actor + 0x57) = r1;
    }
}
void ActorAttrOp_prevPosY(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;
    if (op == 0) {
        *(unsigned int *)(actor + 0x3c) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x3c) = *(unsigned int *)(actor + 0x3c) + param;
    } else {
        v = (*(unsigned int *)(actor + 0x3c) == param);
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_prevPosZ(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned int *)(actor + 0x40) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x40) += param;
    } else {
        val = 0;
        if (*(unsigned int *)(actor + 0x40) == param)
            val = 1;
        actor[0x57] = val;
    }
}
void ActorAttrOp_bounce(unsigned int *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x44) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x44) += param;
    } else {
        val = 0;
        if (*(unsigned int *)((char *)actor + 0x44) == param)
            val = 1;
        *(unsigned char *)((char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_gravity(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x48) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x48) += param;
    } else {
        unsigned char val;
        val = 0;
        if (*(unsigned int *)((char *)actor + 0x48) == param)
            val = 1;
        *(unsigned char *)((char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_floorPos(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x14) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x14) += param;
    } else {
        unsigned char val;
        val = 0;
        if (*(unsigned int *)((char *)actor + 0x14) == param)
            val = 1;
        *((unsigned char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_unk4C(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)(actor + 0x4c) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x4c) += param;
    } else {
        unsigned char val = 0;
        if (*(unsigned int *)(actor + 0x4c) == param)
            val = 1;
        *(actor + 0x57) = val;
    }
}
void ActorAttrOp_sprite(unsigned char *actor, unsigned int op, unsigned int param)
{
    int flag;
    if (op == 0) {
        *(unsigned int *)(actor + 0x50) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x50) += param << 2;
    } else {
        flag = 0;
        if (*(unsigned int *)(actor + 0x50) == param)
            flag = 1;
        *(unsigned char *)(actor + 0x57) = flag;
    }
}
void ActorAttrOp_unk54(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char result;
    if (op == 0) {
        *(unsigned char *)(actor + 0x54) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x54) += param;
    } else {
        result = 0;
        if (*(unsigned char *)(actor + 0x54) == (unsigned char)param)
            result = 1;
        *(unsigned char *)(actor + 0x57) = result;
    }
}
void ActorAttrOp_unk55(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char tmp;

    if (op == 0) {
        actor[0x55] = param;
    } else if (op == 1) {
        actor[0x55] += param;
    } else {
        tmp = 0;
        if (actor[0x55] == (unsigned char)param)
            tmp = 1;
        actor[0x57] = tmp;
    }
}
void ActorAttrOp_unk56(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned char *)(actor + 0x56) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x56) += param;
    } else {
        unsigned char val = *(unsigned char *)(actor + 0x56);
        unsigned char result = 0;
        if (val == (unsigned char)param)
            result = 1;
        *(unsigned char *)(actor + 0x57) = result;
    }
}
void ActorAttrOp_scriptVar(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned char *)(actor + 0x57) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x57) += param;
    } else {
        *(unsigned char *)(actor + 0x57) =
            (*(unsigned char *)(actor + 0x57) == (unsigned char)param);
    }
}
void ActorAttrOp_unk58(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned char *)(actor + 0x58) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x58) += param;
    } else {
        val = 0;
        if (*(unsigned char *)(actor + 0x58) == (unsigned char)param)
            val = 1;
        *(unsigned char *)(actor + 0x57) = val;
    }
}
void ActorAttrOp_unk59(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char result;
    if (op == 0) {
        *(unsigned char *)(actor + 0x59) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x59) += param;
    } else {
        result = 0;
        if (*(unsigned char *)(actor + 0x59) == (unsigned char)param)
            result = 1;
        *(unsigned char *)(actor + 0x57) = result;
    }
}
void ActorAttrOp_unk5A(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;
    unsigned char result;

    if (op == 0) {
        actor[0x5a] = param;
    } else if (op == 1) {
        actor[0x5a] += param;
    } else {
        val = actor[0x5a];
        result = 0;
        if (val == (unsigned char)param)
            result = 1;
        actor[0x57] = result;
    }
}
void ActorAttrOp_unk5B(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char r1;

    if (op == 0) {
        actor[0x5b] = param;
    } else if (op == 1) {
        actor[0x5b] += param;
    } else {
        r1 = 0;
        if (actor[0x5b] == (unsigned char)param)
            r1 = 1;
        actor[0x57] = r1;
    }
}
void ActorAttrOp_unk5D(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[0x5d] = param;
    } else if (op == 1) {
        actor[0x5d] += param;
    } else {
        unsigned char r1;
        r1 = 0;
        if (actor[0x5d] == (unsigned char)param)
            r1 = 1;
        actor[0x57] = r1;
    }
}

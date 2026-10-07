void ActorAttrOp_width(void *actor, int op, int value)
{
    unsigned short *p = (unsigned short *)((char *)actor + 0x20);
    if (op == 0) {
        *p = value;
    } else if (op == 1) {
        *p = *p + value;
    } else {
        *((unsigned char *)actor + 0x57) = (*p == (short)value);
    }
}

struct Actor_8314 {
    void *script;
    unsigned short scriptPos;
    unsigned short facing;
    int posX;
    int posY;
    int posZ;
    unsigned char pad14[0x5a - 0x14];
    unsigned char unk5A;
    unsigned char pad5B[0x68 - 0x5b];
    struct Actor_8314 *linkedActor;
};

extern int __atan2(int, int);

int OvlFunc_896_2008314(struct Actor_8314 *actor)
{
    struct Actor_8314 *target;
    short diff;

    target = actor->linkedActor;
    if (target != 0) {
        actor->unk5A &= 0xfe;
        diff = (unsigned short)__atan2(target->posZ - actor->posZ, target->posX - actor->posX) - actor->facing;
        if (diff != 0) {
            if (diff > 0x1000) {
                diff = 0x1000;
            }
            if (diff < -0x1000) {
                diff = -0x1000;
            }
            actor->facing += diff;
        }
    }

    return 1;
}

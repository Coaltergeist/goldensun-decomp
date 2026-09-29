extern unsigned char *__MapActor_GetActor(int);
extern void __PlaySound(unsigned int);

extern int Lm935_1844[] __asm__(".Lm935_1844");

extern int __TestCollision(void *, void *);

extern void __Actor_SetAnim(void *, int);

extern void __WaitFrames(int);

extern void __Actor_TravelTo(unsigned char *, unsigned int, unsigned int, unsigned int);

extern void __Actor_WaitMovement(void *);

void OvlFunc_935_2008170(void) {
    int pos[3];
    unsigned char *player;
    unsigned char *other;
    unsigned char *hit;
    int dir;
    int vec;
    int x, z;
    int i;
    int speed;
    int zero;

    player = __MapActor_GetActor(0);
    x = *(short *)(player + 0xa);
    dir = (*(unsigned short *)(player + 6) >> 12) << 2;
    vec = *(int *)((char *)Lm935_1844 + dir);
    x += vec >> 16;
    z = *(short *)(player + 0x12) + (short)vec;
    other = (unsigned char *)OvlFunc_935_2008134(x >> 4, z >> 4);
    if (other[0x59] == 0 || other == 0)
        return;

    for (i = 0; i <= 3; i++) {
        if (other == __MapActor_GetActor(i + 0xb))
            return;
    }

    vec = *(int *)((char *)Lm935_1844 + dir);
    x = *(short *)(other + 0xa) + (vec >> 16);
    z = *(short *)(other + 0x12) + (short)vec;
    hit = (unsigned char *)OvlFunc_935_2008134(x >> 4, z >> 4);
    if (hit != 0 && (hit[0x59] & 1) != 0)
        return;

    zero = 0;
    other[0x22] = 2;
    vec = *(int *)((char *)Lm935_1844 + dir);
    pos[0] = *(int *)(other + 8) + (vec & 0xffff0000);
    pos[1] = *(int *)(other + 0xc);
    pos[2] = *(int *)(other + 0x10) + (vec << 16);

    if (__TestCollision(other, pos) > 0)
        return;

    __Actor_SetAnim(player, 8);
    speed = 0x3333;
    __WaitFrames(15);
    __PlaySound(0xee);

    *(int *)(other + 0x30) = speed;
    *(int *)(other + 0x34) = speed;
    __Actor_TravelTo(other, pos[0], pos[1], pos[2]);

    *(int *)(player + 0x30) = speed;
    *(int *)(player + 0x34) = speed;
    __Actor_TravelTo(player, pos[0], pos[1], pos[2]);

    __Actor_WaitMovement(other);
    __PlaySound(0x90 << 1);

    *(int *)(other + 8) = pos[0];
    *(int *)(other + 0x10) = pos[2];
    *(int *)(other + 0x24) = zero;
    *(int *)(other + 0x2c) = zero;
    *(int *)(player + 0x24) = zero;
    *(int *)(player + 0x2c) = zero;
    *(int *)(player + 0x38) = 0x80 << 24;
    *(int *)(player + 0x40) = 0x80 << 24;
    __Actor_SetAnim(player, 1);
}

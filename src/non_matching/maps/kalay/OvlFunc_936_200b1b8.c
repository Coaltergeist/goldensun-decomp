extern const int Lm936_3d84[] __asm__(".Lm936_3d84");
extern void *__MapActor_GetActor(int);
extern unsigned int OvlFunc_936_200b184(unsigned int, unsigned int);
extern int __TestCollision(struct Actor *, vec3_t *);
extern void __Actor_SetAnim(struct Actor *, int);
extern void __WaitFrames(int);
extern void __PlaySound(int);
extern void __Actor_TravelTo(struct Actor *, int, int, int);
extern void __Actor_WaitMovement(struct Actor *);
extern void __MapActor_PlayPendingSound(void);
extern void OvlFunc_936_200b2a4(void);

void OvlFunc_936_200b1b8(void)
{
    struct Actor *player;
    struct Actor *target;
    vec3_t destPos;
    int step;
    int x;
    int z;

    player = (struct Actor *)__MapActor_GetActor(0);
    step = Lm936_3d84[player->facing >> 12];
    x = ((player->pos.x >> 16) + (step >> 16)) >> 4;
    z = ((player->pos.z >> 16) + (s16)step) >> 4;

    target = (struct Actor *)OvlFunc_936_200b184(x, z);
    if (target == NULL)
        return;

    target->layer = 2;

    destPos.x = target->pos.x + (step & 0xffff0000);
    destPos.y = target->pos.y;
    destPos.z = target->pos.z + (step << 16);

    if (__TestCollision(target, &destPos) > 0)
        return;

    __Actor_SetAnim(player, 8);
    __WaitFrames(15);
    __PlaySound(0xb9);

    target->speed = 0x3333;
    target->accel = 0x3333;
    __Actor_TravelTo(target, destPos.x, destPos.y, destPos.z);

    player->speed = 0x3333;
    player->accel = 0x3333;
    __Actor_TravelTo(player, destPos.x, destPos.y, destPos.z);

    __Actor_WaitMovement(target);
    __MapActor_PlayPendingSound();

    target->pos.x = destPos.x;
    target->pos.z = destPos.z;
    target->motion.x = 0;
    target->motion.z = 0;

    __Actor_SetAnim(player, 1);
    OvlFunc_936_200b2a4();
}

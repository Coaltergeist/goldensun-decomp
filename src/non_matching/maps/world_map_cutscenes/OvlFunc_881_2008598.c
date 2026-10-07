void OvlFunc_881_2008598(void)
{
    extern unsigned char gStateBytes[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    extern u8 gDebugMode;
    extern struct Actor *__MapActor_GetActor(int);
    extern struct Actor *__GetFieldActor(int);
    extern int __GetFlag(int);

    struct Actor *actor;
    struct Actor *cam;
    struct Actor *target;
    unsigned char *base;
    unsigned char *gs;
    int actor_range;
    int min_x, max_x;
    int min_z, max_z;
    int i;

    gs = gStateBytes;
    gs += (0xfa << 1);
    actor = (struct Actor *)__MapActor_GetActor(*(int *)gs);

    actor_range = actor->width * actor->sprite->scale;

    base = *(unsigned char **)iwram_3001ebc;
    cam = *(struct Actor **)(base + (0xf0 << 1));

    min_x = cam->pos.x - (0xa0 << 16);
    max_x = cam->pos.x + (0xa0 << 16);
    min_z = cam->pos.z - (0x12c << 16);
    max_z = cam->pos.z + (0xc8 << 16);

    for (i = 8; i <= 0x41; i++) {
        target = __GetFieldActor(i);
        if (target == NULL)
            continue;

        if (target->pos.x < min_x || target->pos.x > max_x ||
            target->pos.z < min_z || target->pos.z > max_z) {
            target->visible = 0;
            continue;
        }

        target->visible = 1;
        if (gDebugMode && __GetFlag(0x163))
            continue;

        {
            int dx = target->pos.x - actor->pos.x;
            int dz;
            int range;

            if (dx < 0)
                dx = -dx;

            range = actor_range + target->width * target->sprite->scale;
            dz = target->pos.z - actor->pos.z;
            if (dz < 0)
                dz = -dz;

            if (dx + dz < range) {
                if (__GetFlag(0x82 << 1) == 0)
                    *(u16 *)(base + (0xb6 << 1)) = i + 0x64;
            }
        }
    }
}

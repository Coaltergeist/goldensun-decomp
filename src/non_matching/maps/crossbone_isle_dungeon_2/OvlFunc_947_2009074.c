extern int __Func_8011f54(int, int, int);
extern int OvlFunc_common0_18(int, int, int, int);
extern void __DeleteActor(int);

int OvlFunc_947_2009074(int actor_id, int arg1)
{
    unsigned char *actor;
    int ret;
    int spawned_actor;
    int y;
    int lim_y;
    int limit;
    unsigned int i;

    actor = __MapActor_GetActor(actor_id);
    ret = 0;
    spawned_actor = 0;
    __Actor_SetSpriteFlags(actor, 0);
    y = __Func_8011f54(2, *(int *)(actor + 8), *(int *)(actor + 0x10));
    lim_y = y / 0x100000;
    limit = lim_y;
    if (limit < 0) {
        limit = -limit;
    }
    limit++;

    for (i = 0; i <= limit; i++) {
        int val = __Func_8011f54(actor[0x22], *(int *)(actor + 8), *(int *)(actor + 0x10) + (i << 20));
        if (val / 0x100000 > lim_y) {
            int spawn_x = ((*(int *)(actor + 8) >> 20) << 20) + 0x80000;
            int spawn_y = (val / 0x100000) << 20;
            int spawn_z;
            int type;

            if (arg1 == 0) {
                spawn_z = (((*(int *)(actor + 0x10) >> 20) + i + 2) << 20) + 0x20000;
                type = 0xdf;
            } else {
                spawn_z = (((*(int *)(actor + 0x10) >> 20) + i + 3) << 20) - 0x20000;
                type = 0xfd;
            }
            spawned_actor = OvlFunc_common0_18(spawn_x, spawn_y, spawn_z, type);
            y = *(int *)(actor + 0x10) - spawn_z + spawn_y;
            ret = 1;
            break;
        }
    }

    OvlFunc_947_2008da8((unsigned int)actor, y);
    *(int *)(actor + 8) = 0;
    *(int *)(actor + 0xc) = 0;
    *(int *)(actor + 0x10) = 0;
    if (spawned_actor != 0) {
        __DeleteActor(spawned_actor);
    }
    return ret;
}

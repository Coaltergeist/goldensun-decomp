// Remaining diff: 1-insn sched2 priority tie at +0xb6 (`movs r2, #1` for `ret = 1`
// schedules before `subs r3, r3, r7` instead of at +0xbc). All other 78 instructions match.
int OvlFunc_947_2009074(int actor_id, int arg1)
{
    struct Actor *actor;
    int ret;
    int spawned_actor;
    int y;
    int lim_y;
    int limit;
    unsigned int i;
    int val;
    int spawn_x;
    int spawn_y;
    int spawn_z;
    int type;

    actor = (struct Actor *)__MapActor_GetActor(actor_id);
    ret = 0;
    spawned_actor = 0;
    __Actor_SetSpriteFlags(actor, 0);
    y = __Func_8011f54(2, actor->pos.x, actor->pos.z);
    lim_y = y / 0x100000;
    limit = lim_y;
    if (limit < 0) {
        limit = -limit;
    }
    limit++;

    for (i = 0; i <= limit; i++) {
        val = __Func_8011f54(actor->layer, actor->pos.x, (i << 20) + actor->pos.z);
        val /= 0x100000;
        if (lim_y < val) {
            spawn_x = ((actor->pos.x >> 20) << 20) + 0x80000;

            if (arg1 == 0) {
                i += 2;
                spawn_z = ((i + (actor->pos.z >> 20)) << 20) + 0x20000;
                spawn_y = val << 20;
                type = 0xdf;
            } else {
                i += 3;
                spawn_z = ((i + (actor->pos.z >> 20)) << 20) - 0x20000;
                spawn_y = val << 20;
                type = 0xfd;
            }
            spawned_actor = OvlFunc_common0_18(spawn_x, spawn_y, spawn_z, type);
            y = actor->pos.z - spawn_z + spawn_y;
            ret = 1;
            break;
        }
    }

    OvlFunc_947_2008da8((unsigned int)actor, y);
    actor->pos.x = 0;
    actor->pos.y = 0;
    actor->pos.z = 0;
    if (spawned_actor != 0) {
        __DeleteActor(spawned_actor);
    }
    return ret;
}

extern void *__galloc_ewram(int, int);

extern void __Camera_SetTarget(void *, void *);

extern void __Actor_WaitMovement(void *);

static inline void API_vec3_translate(int a, int b, void *c) {
    extern void __vec3_translate(int, int, void *);
    __vec3_translate(a, b, c);
}

void OvlFunc_916_2008c2c(void *arg0) {
    int pos[3];
    int flag;
    struct MapTileEntry_916 *entry = (struct MapTileEntry_916 *)arg0;
    char *actor;
    int dir;
    int *vec;
    int i;
    int dest_x, dest_z;
    int idx;

    flag = 0;

    actor = (char *)__MapActor_GetActor(0);
    dir = (*(unsigned short *)(actor + 6) + 0x2000) & 0xc000;

    pos[0] = (*(int *)(actor + 8) & 0xfff00000) + 0x80000;
    pos[1] = *(int *)(actor + 0xc);
    pos[2] = (*(int *)(actor + 0x10) & 0xfff00000) + 0x80000;
    API_vec3_translate(0x100000, dir, pos);

    entry = OvlFunc_916_2008b8c(entry, pos[0] / 0x100000, pos[2] / 0x100000);
    if (entry == 0) {
        return;
    }

    for (i = 0; i <= 10; i++) {
        vec = pos;
        vec[0] = entry->x << 20;
        vec[2] = entry->y << 20;
        API_vec3_translate(0x100000, dir, vec);
        if (OvlFunc_916_2008be4(vec[0] / 0x100000, pos[2] / 0x100000, entry->dir) != 0) {
            break;
        }
        flag = 1;
        if (entry->dir == 0) {
            dest_x = pos[0] + 0x200000;
            dest_z = pos[2] + 0x80000;
        } else {
            dest_x = pos[0] + 0x80000;
            dest_z = pos[2] + 0x200000;
        }
        entry->x = pos[0] / 0x100000;
        entry->y = pos[2] / 0x100000;
    }

    if (flag == 0) {
        return;
    }

    pos[0] = (*(int *)(actor + 8) & 0xfff00000) + 0x80000;
    pos[1] = *(int *)(actor + 0xc);
    pos[2] = (*(int *)(actor + 0x10) & 0xfff00000) + 0x80000;
    API_vec3_translate(0x80000, dir, pos);

    actor = (char *)entry->actor;
    idx = dir / 0x4000;

    API_CutsceneStart();
    API_MapActor_SetAnim(0, 8);
    API_CutsceneWait(6);
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x3333;
    API_PlaySound(0xef);
    __Actor_SetAnim(actor, L1164[idx]);
    API_Actor_TravelTo(actor, dest_x, 0, dest_z);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(0, 2);
    __Camera_SetTarget(*(void **)((char *)__galloc_ewram(0x1b, 0xccc) + (0xf0 << 1)), actor);
    API_MapActor_SetSpeed(0, 0x4ccc, 0x3333);
    API_MapActor_TravelBy(0, L1168[idx], L116c[idx]);
    API_CutsceneWait(24);
    API_MapActor_SetAnim(0, 1);
    __Actor_WaitMovement(actor);
    __Actor_SetAnim(actor, 1);
    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    API_CutsceneWait(15);
    API_CutsceneEnd();
}

extern void *__CreateActor(int, int, int, int);

extern void __Actor_SetAnim(void *, int);

extern int __Func_8011f54(int, int, int);

void OvlFunc_916_2008a90(struct MapTileEntry_916 *entry) {
    if (entry->id != -1) {
        do {
            int x, y;
            int ret;
            unsigned char *actor;
            unsigned short v;

            if (entry->dir == 0) {
                x = (entry->x << 20) + (0x80 << 14);
                y = (entry->y << 20) + (0x80 << 12);
            } else {
                x = (entry->x << 20) + (0x80 << 12);
                y = (entry->y << 20) + (0x80 << 14);
            }

            actor = (unsigned char *)__CreateActor(entry->id, x, 0, y);
            if (actor == 0) {
                break;
            }

            entry->actor = actor;
            __Actor_SetAnim(actor, 1);
            __Actor_SetSpriteFlags(actor, 0);
            actor[0x59] = 0;
            v = 0x20;
            *(unsigned short *)(actor + 0x20) = v;

            ret = __Func_8011f54(0, *(short *)(actor + 0xa), *(short *)(actor + 0x12)) << 16;
            *(int *)(actor + 0xc) += ret;
            *(int *)(actor + 0x14) = ret;
            entry++;
        } while (entry->id != -1);
    }
}

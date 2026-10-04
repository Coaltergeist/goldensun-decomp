struct ScriptTable {
    void *scripts[3];
};

extern struct ScriptTable L160c __asm__(".Lm905_160c");
extern void __Actor_SetAnim(void *, int);
extern void __Actor_SetScript(void *, void *);
extern void OvlFunc_905_2008a00(struct Actor *);

void OvlFunc_905_2008a68(int x, int y, int z, int speed, int accel, int arg5, int arg6)
{
    struct Actor *player;
    struct Actor *actor;
    struct Sprite *sprite;
    struct ScriptTable table;
    u32 prio;

    player = (struct Actor *)__MapActor_GetActor(0);
    table = L160c;
    actor = (struct Actor *)__CreateActor(0xde, x, y, z);
    if (actor != NULL) {
        sprite = actor->sprite;
        __Actor_SetAnim(actor, (arg5 + 1) & 0xf);
        __Actor_SetScript(actor, table.scripts[arg5 & 0xf]);
        __Func_80929d8((int)actor, ((u32)arg5 >> 16) & 0xf);
        actor->__unk55 = 0;
        sprite->flags = 0;
        actor->update = (actorfun_t *)OvlFunc_905_2008a00;
        actor->speed = speed;
        actor->accel = accel;
        actor->__unk66 = arg6;
        prio = (u32)arg6 >> 16;
        if (prio == 0) {
            sprite->oam.priority = player->sprite->oam.priority;
        } else if (prio <= 3) {
            actor->flags &= 0xfe;
            sprite->oam.priority = prio;
        }
    }
}

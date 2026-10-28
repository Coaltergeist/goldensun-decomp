struct CS964P_Effect {
    unsigned char priority;
    unsigned char padding[3];
    int animation;
    int scaleX, scaleY, targetScaleX, targetScaleY;
    short spriteId;
    void *script;
    unsigned short rotation, angularVelocity;
    actorfun_t *update;
};
extern struct Actor *CS964P_Actor(int) __asm__("__MapActor_GetActor");
extern struct Actor *CS964P_Create(int, int, int, int) __asm__("__CreateActor");
extern void CS964P_Anim(struct Actor *, int) __asm__("__Actor_SetAnim");
extern void CS964P_Script(struct Actor *, const void *) __asm__("__Actor_SetScript");
extern void CS964P_Animation(struct Actor *, int) __asm__("__Func_80929d8");
extern void CS964P_Update(struct Actor *) __asm__("OvlFunc_964_2008ab0");
extern const int *CS964P_Scripts[] __asm__(".Lm964_336c");
extern int _divsi3_RAM(int, int);
void CS964P_Constructor(int, int, int, int, int, int, unsigned int, struct CS964P_Effect *) __asm__("OvlFunc_964_2008ae8");
void CS964P_Constructor(int x, int y, int z, int dx, int dy, int dz,
                         unsigned int flags, struct CS964P_Effect *data)
{
    struct Actor *player = CS964P_Actor(0);
    struct Actor *actor;
    struct Sprite *sprite;
    const int *script;
    if ((flags & 0x100000) && data != 0)
        actor = CS964P_Create(data->spriteId, x, y, z);
    else
        actor = CS964P_Create(0xde, x, y, z);
    if (actor == 0) return;
    sprite = actor->sprite;
    CS964P_Anim(actor, (flags + 1) & 15);
    CS964P_Script(actor, CS964P_Scripts[flags & 15]);
    actor->__unk55 = 0;
    sprite->flags = 0;
    actor->update = (actorfun_t *)CS964P_Update;
    actor->bounce = dx;
    actor->gravity = dy;
    actor->__unk4C = dz;
    sprite->oam.priority = player->sprite->oam.priority;
    actor->speed = 0;
    actor->accel = 0;
    actor->waveCounter = 0;
    if ((flags & 0xffff0000) == 0 || data == 0) return;
    if (flags & 0x10000) CS964P_Animation(actor, data->animation);
    if (flags & 0x20000) {
        actor->flags &= 0xfe;
        sprite->oam.priority = data->priority;
    }
    if (flags & 0x80000) {
        actor->scale.x = data->scaleX;
        actor->scale.y = data->scaleY;
    }
    if (flags & 0x40000) {
        script = CS964P_Scripts[flags & 15];
        if (flags & 0x80000) {
            actor->speed = _divsi3_RAM(data->targetScaleX - actor->scale.x, script[3]);
            actor->accel = _divsi3_RAM(data->targetScaleY - actor->scale.y, script[3]);
        } else {
            actor->speed = _divsi3_RAM(data->targetScaleX - 0x10000, script[3]);
            actor->accel = _divsi3_RAM(data->targetScaleY - 0x10000, script[3]);
        }
    }
    if (flags & 0x200000) {
        CS964P_Anim(actor, 1);
        CS964P_Script(actor, data->script);
    }
    if (flags & 0x400000) sprite->rotation = data->rotation;
    if (flags & 0x800000) actor->waveCounter = data->angularVelocity;
    if (flags & 0x1000000) actor->update = data->update;
}

/* Remaining diff:
 * 1) +0x92: `mov r1, r9` / `str r3, [r6, #0x4c]` swap from `-fno-strict-aliasing`
 *    adding a memory dependence from `actor->__unk4C` (`int`) to `player->sprite` (`struct Sprite *`).
 * 2) +0x136 and +0x14e: `ldr r0, [r7, #0x10]` swaps with `ldr r3, [r6, #0x18]` / `ldr r2, =0xffff0000`
 *    because the original C used `/` (`__divsi3`, a `CONST_CALL_P` libcall), whereas the overlay
 *    veneer in `imports.s` is named `_divsi3_RAM` (an ordinary non-const call whose `r2`/`r3`
 *    call-clobber dependencies flip Haifa's tie-breaker).
 */
struct CS927P_Effect {
    unsigned char priority;
    unsigned char padding[3];
    int animation;
    int scaleX;
    int scaleY;
    int targetScaleX;
    int targetScaleY;
    short spriteId;
    void *script;
    unsigned short rotation;
    unsigned short angularVelocity;
    actorfun_t update;
};

extern void __Actor_SetScript(struct Actor *, void *);
extern void __Func_80929d8(int, int);
extern void OvlFunc_927_2008ab0(struct Actor *);
extern int *Lm927_3058[] __asm__(".Lm927_3058");
extern int _divsi3_RAM(int, int);

void OvlFunc_927_2008ae8(int x, int y, int z, int dx, int dy, int dz, int flags, struct CS927P_Effect *data)
{
    struct Actor *player = (struct Actor *)__MapActor_GetActor(0);
    struct Actor *actor;
    struct Sprite *sprite;
    int *script;
    int scale_flag;

    if ((flags & 0x100000) && data != 0)
        actor = (struct Actor *)API_CreateActor(data->spriteId, x, y, z);
    else
        actor = (struct Actor *)API_CreateActor(0xde, x, y, z);
    if (actor == 0)
        return;

    sprite = actor->sprite;
    __Actor_SetAnim(actor, (flags + 1) & 15);
    __Actor_SetScript(actor, Lm927_3058[flags & 15]);
    actor->__unk55 = 0;
    sprite->flags = 0;
    actor->update = (actorfun_t)OvlFunc_927_2008ab0;
    actor->bounce = dx;
    actor->gravity = dy;
    actor->__unk4C = dz;
    sprite->oam.priority = player->sprite->oam.priority;
    actor->speed = 0;
    actor->accel = 0;
    actor->waveCounter = 0;

    if ((flags & 0xffff0000) == 0 || data == 0)
        return;
    if (flags & 0x10000)
        __Func_80929d8((int)actor, data->animation);
    if (flags & 0x20000) {
        u8 p;
        actor->flags &= 0xfe;
        p = data->priority;
        sprite->oam.priority = p;
    }
    scale_flag = flags & 0x80000;
    if (scale_flag) {
        actor->scale.x = data->scaleX;
        actor->scale.y = data->scaleY;
    }
    if (flags & 0x40000) {
        script = Lm927_3058[flags & 15];
        if (scale_flag) {
            actor->speed = _divsi3_RAM(data->targetScaleX - actor->scale.x, script[3]);
            actor->accel = _divsi3_RAM(data->targetScaleY - actor->scale.y, script[3]);
        } else {
            actor->speed = _divsi3_RAM(data->targetScaleX - 0x10000, script[3]);
            actor->accel = _divsi3_RAM(data->targetScaleY - 0x10000, script[3]);
        }
    }
    if (flags & 0x200000) {
        __Actor_SetAnim(actor, 1);
        __Actor_SetScript(actor, data->script);
    }
    if (flags & 0x400000)
        sprite->rotation = data->rotation;
    if (flags & 0x800000)
        actor->waveCounter = data->angularVelocity;
    if (flags & 0x1000000)
        actor->update = data->update;
}

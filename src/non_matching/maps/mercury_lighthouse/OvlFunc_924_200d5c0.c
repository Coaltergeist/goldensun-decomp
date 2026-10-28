#include "math.h"
struct CS924_Traversal {
    int count, tileType, busy, resetX, resetZ;
    struct Actor *source, *traveler;
};
extern struct CS924_Traversal **CS924_TraversalGlobal __asm__("iwram_3001edc");
struct CS924_GameState { unsigned char padding[0x1f4]; int partyIndex; };
extern struct CS924_GameState CS924_State __asm__("gState");
extern unsigned char CS924_Tiles[] __asm__("gBuffer");
extern unsigned int CS924_KeysHeld __asm__("gKeyHeld");
extern unsigned int CS924_KeysPress __asm__("gKeyPress");
extern unsigned short CS924_Directions[] __asm__(".Lm924_5e44");
extern unsigned char CS924_TravelScript[] __asm__("gScript_924__0200de20");
extern unsigned char CS924_StopScript[] __asm__("gScript_924__0200de2c");
extern void CS924_Translate(int, unsigned int, int *) __asm__("__vec3_translate");
extern struct Actor *CS924_Create(int, int, int, int) __asm__("__CreateActor");
extern void CS924_Delete(struct Actor *) __asm__("__DeleteActor");
extern void CS924_Script(struct Actor *, void *) __asm__("__Actor_SetScript");
extern void CS924_Anim(struct Actor *, int) __asm__("__Actor_SetAnim");
extern void CS924_Travel(struct Actor *, int, int, int) __asm__("__Actor_TravelTo");
extern void CS924_SpriteAnim(struct Sprite *, int) __asm__("__Sprite_SetAnim");
extern void CS924_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
extern int CS924_Multiply(int, int) __asm__("Func_8000888");
static inline void CS924_Byte(unsigned char *p, int value) { *p = value; }
static inline void CS924_Half(unsigned short *p, int value) { *p = value; }

static inline void CS924_Project(int distance, unsigned int angle, int *position)
{ CS924_Translate(distance, angle, position); }
static inline struct Actor *CS924_ActorAt(unsigned char *scene, int slot)
{ return *(struct Actor **)(scene + slot); }

void OvlFunc_924_200d5c0(void)
{
    struct CS924_Traversal *state;
    unsigned char *scene, *mode, *sourceTile, *destTile;
    struct Actor *actor, *traveler, *source;
    struct Sprite *sprite;
    unsigned char savedMode;
    int collision, count, frame;
    unsigned int direction;
    int coords[3];
    int *vec;


    state = *CS924_TraversalGlobal;
    scene = *(unsigned char **)((unsigned char *)&CS924_TraversalGlobal - 0x20);
    actor = CS924_ActorAt(scene, CS924_State.partyIndex * 4 + 0x14);
    mode = &actor->__unk55;
    savedMode = *mode;
    direction = CS924_Directions[(CS924_KeysHeld >> 4) & 15];
    if ((short)direction == -1)
        return;
    vec = coords;
    vec[0] = (actor->pos.x & 0xfff00000) + 0x80000;
    vec[1] = actor->floorPos;
    vec[2] = (actor->pos.z & 0xfff00000) + 0x80000;
    sourceTile = CS924_Tiles + 4 * ((vec[2] / 0x100000) * 128 + vec[0] / 0x100000);
    CS924_Project(0x200000, direction, vec);
    destTile = CS924_Tiles + 4 * ((vec[2] / 0x100000) * 128 + vec[0] / 0x100000);
    if (sourceTile[2] != state->tileType && destTile[2] == state->tileType && state->count == 0)
        return;
    API_CutsceneStart();
    collision = __TestCollision(actor, coords);
    if (collision != 0)
        return;
    traveler = state->traveler;
    if (traveler != 0) {
        CS924_Half((unsigned short *)&traveler->waveCounter, collision);
        CS924_Script(traveler, CS924_StopScript);
        CS924_Anim(traveler, 7);
        state->traveler = (struct Actor *)collision;
    }
    if (destTile[2] == state->tileType && state->count != 0) {
        source = state->source;
        traveler = CS924_Create(26, source->pos.x, source->pos.y, source->pos.z);
        if (traveler != 0) {
            sprite = traveler->sprite;
            traveler->floorPos = source->floorPos;
            CS924_Script(traveler, CS924_TravelScript);
            CS924_Byte(&traveler->__unk55, collision);
            CS924_Half((unsigned short *)&traveler->waveCounter, collision);
            CS924_Byte(&traveler->flags, 2);
            traveler->speed = 0x40000;
            traveler->accel = 0x20000;
            CS924_Travel(traveler, vec[0], vec[1], vec[2]);
            if (sprite != 0) {
                CS924_SpriteAnim(sprite, 6);
                sprite->flags = 0;
            }
            state->traveler = traveler;
        }
        count = state->count - 1;
        state->count = count;
        if (count == 0) {
            CS924_Delete(state->source);
            state->source = (struct Actor *)count;
            API_ClearFlag(0x161);
        } else if (state->source != 0) {
            CS924_Anim(state->source, 6 - count);
        }
    }
    CS924_Anim(actor, 6);
    API_WaitFrames(3);
    API_PlaySound(0x98);
    CS924_Anim(actor, 7);
    actor->speed = 0x30000;
    actor->accel = 0x20000;
    actor->motion.y = 0x40000;
    CS924_Byte(mode, *mode & 0x7e);
    CS924_SpriteFlags(actor, 0);
    API_MapActor_TravelToWait(0, ((short *)vec)[1], ((short *)vec)[5]);
    CS924_Anim(actor, 6);
    API_WaitFrames(2);
    if (destTile[2] != state->tileType)
        CS924_SpriteFlags(actor, 1);
    else
        API_PlaySound(0xd7);
    API_WaitFrames(1);
    *mode = savedMode;
    if (destTile[2] == state->tileType && state->traveler == 0) {
        CS924_Anim(actor, 18);
        API_PlaySound(0xf1);
        for (frame = 0; ; frame++) {
            if ((frame & 15) == 0)
                OvlFunc_924_200d158(actor);
            if (frame > 31 && CS924_KeysPress != 0)
                break;
            API_WaitFrames(1);
        }
        API_PlaySound(0x120);
        API_WaitFrames(1);
        actor->pos.x = state->resetX;
        actor->pos.z = state->resetZ;
        CS924_SpriteFlags(actor, 1);
    }
    state->busy = 0;
    API_CutsceneEnd();
    *(int *)(scene + 0x1b4) += fx32_multiply(*(int *)(scene + 0x1b0), 0x200000);
}

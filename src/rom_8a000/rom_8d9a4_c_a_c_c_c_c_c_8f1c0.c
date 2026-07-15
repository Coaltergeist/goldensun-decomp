typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct GameState {
    u8 pad[0x1f4];
    int actorId;
} GameState;

extern GameState gState;
extern u8 *GetFieldActor(int actorId);
extern void *galloc_iwram(int index, u32 size);
extern void gfree(int index);
extern u8 *_CreateActor(int actorId, int x, int y, int z);
extern void _LoadItemIcon(int item);
extern void UploadSpriteGFX(int slot, int size, const void *data);
extern void WaitFrames(int frames);
extern void _Actor_SetAnim(u8 *actor, int animation);
extern void _DeleteActor(u8 *actor);
extern void Func_808f0d8(u8 *actor);
extern void Func_808eee4(void);

void Func_808f1c0(int item, u32 flags)
{
    u8 *fieldActor;
    u8 *buffer;
    u8 *actor;
    u8 *sub;
    s32 zero;
    s32 m2;

    fieldActor = GetFieldActor(gState.actorId);
    buffer = galloc_iwram(0x11, 0xc1 << 3);
    actor = _CreateActor(0x16, *(int *)(fieldActor + 8),
                          *(int *)(fieldActor + 0xc) + 0x240000,
                          *(int *)(fieldActor + 0x10));
    if (actor != 0) {
        sub = *(u8 **)(actor + 0x50);
        zero = 0;
        sub[0x26] = zero;
        sub[0x27] = zero;
        sub[5] &= zero - 0x21;
        sub[9] &= 0xf;
        m2 = 0xd;
        sub[9] = (sub[9] & -m2) | 4;
        _LoadItemIcon(item);
        {
            register const void *gfx asm("r2") = buffer + (0x80 << 3);
            register int size asm("r1") = 0x80;
            asm volatile("" : "+r"(gfx), "+r"(size));
            UploadSpriteGFX(sub[0x1c], size, gfx);
        }
        gfree(0x11);
        if (flags & 1) {
            *(void (**)(void))(actor + 0x6c) = Func_808eee4;
        }
        if (flags & 2) {
            Func_808f0d8(actor);
        }
        WaitFrames(0x50);
        _Actor_SetAnim(fieldActor, 1);
        _DeleteActor(actor);
    }
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef signed char s8;

typedef struct Sprite {
    u8 pad0[9];
    s8 unk9;
    u8 padA[0x1c];
    u8 unk26;
} Sprite;

typedef struct UnsignedSprite {
    u8 pad0[9];
    u8 unk9;
} UnsignedSprite;

typedef struct Object {
    u8 pad0[8];
    s32 x;
    s32 y;
    s32 z;
    u8 pad14[0x1c];
    s32 unk30;
    s32 unk34;
    u8 pad38[0x18];
    Sprite *unk50;
    u8 pad54;
    u8 unk55;
    u8 pad56[0xe];
    u16 unk64;
    u8 pad66[6];
    void (*unk6c)(void);
} Object;

extern Object *_CreateActor(s32, s32, s32, s32);
extern s32 Random(void);
extern void _Actor_SetAnim(Object *, s32);
extern void _Actor_SetScript(Object *, const void *);
extern void Func_80929d8(Object *);
extern void Func_80925e0(void);
extern const u8 gScript_0809fbec[];
extern const u8 gScript_0809fc04[];

void Func_8092624(Object *source, s32 initialize)
{
    Object *actor;
    Sprite *sprite;
    s32 amount;
    s32 flags;

    actor = _CreateActor(0xde, source->x, source->y, source->z);
    if (actor != 0) {
        sprite = actor->unk50;
        switch (Random() & 1) {
        case 1:
            _Actor_SetAnim(actor, 2);
            _Actor_SetScript(actor, gScript_0809fbec);
            break;
        default:
            _Actor_SetAnim(actor, 1);
            _Actor_SetScript(actor, gScript_0809fc04);
            break;
        }
        if (initialize != 0)
            Func_80929d8(actor);
        actor->unk55 = 0;
        amount = Random() % 10U;
        amount += 5;
        actor->unk34 = amount * -0x1999;
        amount = Random() % 15U;
        amount -= 7;
        amount <<= 1;
        actor->unk30 = 0x1999 * amount;
        actor->unk64 = 0;
        actor->unk6c = Func_80925e0;
        sprite->unk26 = 0;
        flags = ((UnsignedSprite *)source->unk50)->unk9 & 0xc;
        sprite->unk9 = (sprite->unk9 & ~0xc) | flags;
    }
}

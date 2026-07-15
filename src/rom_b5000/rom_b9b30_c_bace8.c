#include "gba/types.h"

typedef struct {
    u8 pad[0x12a];
    u8 mode;
} Unit;

typedef struct {
    u8 pad[5];
    u8 type;
    u8 pad06[0x10];
    u8 target;
} SpriteData;

typedef struct {
    u8 pad[0x28];
    SpriteData *data;
} Sprite;

extern Unit *_GetUnit(int);
extern void **GetBattleActor(int);
extern Sprite *Func_80b7f70(void *, int);
extern void _Sprite_SetAnim(Sprite *, int);
extern void WaitFrames(int);
extern void Func_80bac6c(int);
extern void _Func_800bf34(Sprite **, int);
extern void Func_80b7e60(int);

void Func_80bace8(int unitId)
{
    Unit *unit = _GetUnit(unitId);
    int index = 0;
    Sprite *sprite;

    while ((sprite = Func_80b7f70(*GetBattleActor(unitId), index)) != 0) {
        if (unit->mode != 1)
            _Sprite_SetAnim(sprite, 4);
        else
            _Sprite_SetAnim(sprite, 5);
        index++;
    }

    if (unit->mode == 1) {
        Sprite *sprites[4];
        index = 0;
        while ((sprite = Func_80b7f70(*GetBattleActor(unitId), index)) != 0) {
            sprites[index] = sprite;
            sprite->data->type = 6;
            sprite->data->target = 0xff;
            index++;
        }
        WaitFrames(4);
        Func_80bac6c(unitId);
        _Func_800bf34(sprites, index);
        Func_80b7e60(unitId);
    }
}

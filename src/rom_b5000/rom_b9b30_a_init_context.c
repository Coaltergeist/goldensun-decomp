#include "gba/types.h"

typedef signed char signed8;

typedef struct {
    u8 initial;
    signed8 count;
    u8 units[0x56];
    unsigned int flags;
} Animation;

typedef struct {
    int type;
    int unk04;
    int initial;
    int firstUnit;
    int active;
    int count;
    int mode;
    int unk1c;
    int unk20;
    u16 units[16];
} AnimContext;

typedef struct {
    u8 pad[0x38];
    s16 active;
} Unit;

extern Unit *_GetUnit(int unitId);

int InitAnimContext(Animation *animation, AnimContext *context)
{
    int accepted = 0;
    int index;
    unsigned int flags;

    context->unk1c = 0;
    flags = animation->flags;
    context->type = flags & 0xfff;
    context->mode = (flags & 0x3000) >> 12;
    context->initial = animation->initial;

    for (index = 0; index < animation->count; index++) {
        Unit *unit = _GetUnit(animation->units[index]);
        if (unit->active != 0 || (animation->flags & 0x10000) != 0) {
            context->units[accepted] = animation->units[index];
            accepted++;
        }
    }

    if (accepted == 0) {
        context->units[0] = animation->units[0];
        accepted = 1;
    }
    context->firstUnit = animation->units[0];
    context->count = accepted;
    context->active = 1;
}

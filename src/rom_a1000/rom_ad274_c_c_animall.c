#include "gba/types.h"

#define SpriteAnimAllSet Func_80ad69c

extern u8 iwram_3001f2c[];
extern void _Sprite_SetAnim(void *sprite, int animation);

/* 登録スプライトをアニメ１へそろえる */
void SpriteAnimAllSet(void)
{
    u8 *state = *(u8 **)iwram_3001f2c;
    int i;

    for (i = 0; i < state[0x219]; i++)
        _Sprite_SetAnim(*(void **)(state + 0x114 + i * 4), 1);
}

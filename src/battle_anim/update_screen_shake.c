/* battle_anim/update_screen_shake.c */
#include "gba/types.h"

struct ShakeState {
    u8 pad[0x77a0];
    s32 unk77a0;
    s32 unk77a4;
    s32 unk77a8;
};

struct Projection {
    fx32 focal;
    fx32 zMin;
    fx32 zMax;
    s32 originX;
    s32 originY;
};

extern u8 *iwram_3001eec[];
extern u16 iwram_3001ad0[];
extern struct Projection gPhysVec;

extern unsigned int Random(void);

void UpdateScreenShake(int a0, int a1)
{
    struct ShakeState *state = (struct ShakeState *)*iwram_3001eec;
    if (state->unk77a8 > 0) {
        int x = (--a0) & Random();
        int half = a1 / 2;
        int y = (Random() & (a1 - 1)) - half;
        x -= half;
        iwram_3001ad0[2] = x;
        iwram_3001ad0[3] = y + 0x20;
        gPhysVec.originX = 0x78 - x;
        gPhysVec.originY = 0x78 - y;
        state->unk77a8--;
    } else {
        iwram_3001ad0[2] = state->unk77a0;
        iwram_3001ad0[3] = state->unk77a4;
        gPhysVec.originX = 0x78;
        gPhysVec.originY = 0x78;
    }
}

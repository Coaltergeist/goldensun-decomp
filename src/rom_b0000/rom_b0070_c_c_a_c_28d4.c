#include "gba/types.h"

typedef struct {
    u16 spriteId;
    u8 unk2;
    u8 unk3;
} SpriteEntry;

extern u8 iwram_3001f2c[];
extern int _GetSpriteVoice(int sprite);
extern void _Func_8019a54(void);
extern s32 Func_80b2884(s32 position);
extern void _Func_8017658(s32 box, int x, int y, int flag);
extern int _Func_8017364(void);
extern void WaitFrames(int frames);

void Func_80b28d4(s32 param)
{
    SpriteEntry *base;
    s32 self;
    s32 voice;
    register s32 box __asm__("r6");

    base = *(SpriteEntry **)iwram_3001f2c;
    self = param;
    voice = _GetSpriteVoice(base[233].spriteId);
    _Func_8019a54();
    box = Func_80b2884(self);
    _Func_8017658(box, 5, 0, (voice << 16) | 0x22);
    while (!_Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
}

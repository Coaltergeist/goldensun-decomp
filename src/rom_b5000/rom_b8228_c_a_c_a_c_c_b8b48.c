typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

typedef struct {
    s16 unk0;
    u8 pad2[8];
    u16 unkA;
} InputArgs;

typedef struct {
    u8 pad0[4];
    s32 unk4;
    s32 unk8;
    u8 padC[8];
    s32 unk14;
    u8 pad18[4];
    s32 unk1C;
    u8 pad20[4];
    u16 unk24;
    u8 pad26[0x54 - 0x26];
} AttackArgs;

extern u8 iwram_3001f00[];
extern u8 *_GetUnit(u32 arg0);
extern s32 Func_80b8808(u32 arg0);
extern u32 Random(void);
extern void _Func_8019908(u32 arg0, u32 arg1);
extern void _Func_80175a0(u32 arg0);
extern void WaitFrames(u32 frames);
extern void Func_80b82c4(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
extern s32 *GetBattleActor(u32 unit);
extern void _Actor_SetAnimSpeed(s32 actor, s32 speed);
extern void _Anim_Attack(AttackArgs *arg0);
extern void Func_80b8000(u32 unit);

s32 Func_80b8b48(InputArgs *arg0)
{
    AttackArgs s;
    s32 *global;

    global = *(s32 **)iwram_3001f00;
    if (*global == 0x2000) {
        *global = 0x2000;
        WaitFrames(0xA);
    } else {
        *global = 0x2000;
        WaitFrames(0x1E);
    }

    s.unk8 = arg0->unk0;
    if (Func_80b8808(arg0->unk0) < 0)
        return -1;

    s.unk24 = arg0->unkA;
    if (Func_80b8808((s16)s.unk24) < 0)
        return -1;

    _GetUnit(s.unk8);
    _GetUnit((s16)s.unk24);
    Random();
    _Func_8019908(s.unk8, 1);
    _Func_80175a0(0x814);
    Func_80b82c4(s.unk8, (s16)s.unk24, 0xD, 0);
    _Actor_SetAnimSpeed(*GetBattleActor(s.unk8), 0x10);
    GetBattleActor((s16)s.unk24);

    s.unk14 = 1;
    if (s.unk24 <= 7) {
        s.unk4 = 1;
    } else {
        s.unk4 = 0;
    }
    s.unk1C = 0;
    WaitFrames(4);
    _Anim_Attack(&s);
    Func_80b8000((s16)s.unk24);
    Func_80b8000(s.unk8);
    return 0;
}

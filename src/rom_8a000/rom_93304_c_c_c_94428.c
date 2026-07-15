typedef unsigned char u8;

typedef struct GameState {
    u8 pad[0x1f4];
    int actorId;
} GameState;

extern GameState gState;
extern int _GetFlag(int flag);
extern void _ClearFlag(int flag);
extern void Player_ExitStairs(int animation);
extern u8 *GetFieldActor(int actorId);
extern void Func_80933f8(int a, int b, int c, int d);
extern void WaitFrames(int frames);
extern void _PlaySound(int sound);
extern void _Actor_SetAnim(u8 *actor, int animation);
extern void CutsceneWait(int frames);
extern void SetCameraTarget(int actor_id, int preserve_position);

int Func_8094428(void)
{
    int result;
    u8 *actor;
    int actorId;

    result = 0;
    if (_GetFlag(0x120)) {
        Player_ExitStairs(0x18);
        _ClearFlag(0x120);
        result = 1;
    } else if (_GetFlag(0x121)) {
        Player_ExitStairs(0x17);
        _ClearFlag(0x121);
        result = 2;
    } else if (_GetFlag(0x122)) {
        _ClearFlag(0x122);
        actorId = gState.actorId;
        actor = GetFieldActor(actorId);
        *(int *)(actor + 0xc) += 0xa00000;
        Func_80933f8(-1, -1, -1, 0);
        while (*(int *)(actor + 0xc) + *(int *)(actor + 0x28) > *(int *)(actor + 0x14)) {
            WaitFrames(1);
        }
        _PlaySound(0x9f);
        *(int *)(actor + 0xc) = *(int *)(actor + 0x14);
        _Actor_SetAnim(actor, 0x16);
        CutsceneWait(0xf);
        SetCameraTarget(actorId, 1);
        result = 3;
    }
    return result;
}

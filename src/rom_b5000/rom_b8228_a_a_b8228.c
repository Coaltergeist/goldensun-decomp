typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void *GetBattleActor(int unit);
extern u8 *_GetUnit(int unit);
extern void _Actor_Stop(void *actor);
extern void _Actor_TravelTo(void *actor, int x, int y, int z);
extern void _Actor_SetAnim(void *actor, int animation);

extern s32 Data_Lc59a4[] asm(".Lc59a4");
extern s32 Data_Lc59c4[] asm(".Lc59c4");
extern s32 Data_Lc59e4[] asm(".Lc59e4");
extern s32 Data_Lc5a04[] asm(".Lc5a04");

void SetBattleActorKnockback(int unit, int direction)
{
    int *battleActor = (int *)GetBattleActor(unit);
    u8 *actor = (u8 *)battleActor[0];

    if (_GetUnit(unit)[0x128] != 0x94) {
        *(s32 *)(actor + 0x34) = Data_Lc59a4[direction];
        *(s32 *)(actor + 0x30) = Data_Lc59c4[direction];
        if (*(s32 *)(actor + 0xc) == 0 || direction > 4) {
            *(s32 *)(actor + 0x28) = Data_Lc59e4[direction];
        }
        *(s32 *)(actor + 0x48) = 0x9999;
        *(s32 *)(actor + 0x44) = 0;
        actor[0x5a] = 0;
        _Actor_Stop(actor);
        _Actor_TravelTo(actor, battleActor[3] * Data_Lc5a04[direction] / 100, 0, battleActor[4]);
    }
    _Actor_SetAnim(actor, 5);
}

// battle.h
#ifndef BATTLE_H
#define BATTLE_H

#include "rpg.h"
#include "actor.h"
#include "sprite.h"
#include "camera.h"

/// ...
typedef struct BattleActor 
{
	/// ...
	Actor* actor;

	/// ...
	u16 spriteIDs[4];
	/// ...
	vec2 pos;
	/// Default colorswap value for enemies
	u32 defaultColorswap;
	/// ...
	SpriteLayer* spriteLayers[4];

	/// ...
	u16 _unk28;
	/// ...
	u8  _unk2A;

} BattleActor;

/// ...
extern BattleActor* GetBattleActor(u8 unit);

/// ...
extern void BattleActor_GetPos1(u8 unit, vec3* dest);
/// ...
extern void BattleActor_GetPos2(u8 unit, vec3* dest);
/// Write the X/Y screen position of the actor's feet to `dest`.
extern void BattleActor_GetFeetPos(u8 unit, vec3* dest);

/// ...
extern void BattleActor_SetState(u8 unit, u8 colorswap, u8 anim, u8 _unk1, u8 _unk2);

/// ...
extern void BattleActor_SetKnockback(u8 unit, int knockback);


/// ...
typedef struct BattleState 
{
	/// ...
	u32 enemyGroup;
	/// ...
	u16 _unk004;
	/// ...
	u16 _unk006;

	u8 __pad008[0x6C];

	/// ...
	u8 unitActors[16];
	/// ...
	BattleActor actors[14];

	u8 __pad210[0x324];

	/// ...
	u32 expGained;

	u8 __pad583[0x34];

	/// ...
	u16 bgPaletteBuffer[128];
	/// ...
	u32 _unk66C;
	/// ...
	u16 bg;

	// ...

} BattleState;


#endif // BATTLE_H
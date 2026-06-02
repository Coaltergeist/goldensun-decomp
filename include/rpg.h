#ifndef RPG_H
#define RPG_H

#include "util.h"

#if   GS1
#include "gs1/items.h"
#include "gs1/moves.h"
#include "gs1/djinn.h"
#include "gs1/summons.h"
#include "gs1/classes.h"
#include "gs1/enemies.h"
#elif GS2
#include "gs2/items.h"
#include "gs2/moves.h"
#include "gs2/djinn.h"
#include "gs2/summons.h"
#include "gs2/classes.h"
#include "gs2/enemies.h"
#endif

// Element IDs
#define ELEM_EARTH  0
#define ELEM_WATER  1
#define ELEM_FIRE   2
#define ELEM_WIND   3
#define ELEM_NONE   4


//= Units ======================================================================================

// PC IDs
#define PC_ISAAC  0
#define PC_GARET  1
#define PC_IVAN   2
#define PC_MIA    3
#define PC_FELIX  4
#define PC_JENNA  5
#define PC_SHEBA  6
#if !GS1
#define PC_PIERS  7
#endif

// Unit side values
#define SIDE_NONE    0
#define SIDE_ENEMY   1
#define SIDE_PLAYER  2

// Unit guard status values
#define GUARD_NONE   0
#define GUARD_50     1 // Defend, Granite, etc
#define GUARD_60     2 // Shade, etc
#define GUARD_90     3 // Flash, etc
#define GUARD_INVIS  4 // Haze

// Unit poison status values
#define STATUS_POISON  1
#define STATUS_VENOM   2

// Inventory bitfields
//   layout: cccccbeiiiiiiiii (count, broken, equipped, item ID)
#define ITEMSLOT_ID_MASK      0x1FF /// Bitmask to access item ID
#define ITEMSLOT_EQUIPPED     0x200 /// Flag: equipped
#define ITEMSLOT_BROKEN       0x400 /// Flag: broken
#define ITEMSLOT_COUNT_SHIFT  10    /// Bitshift right to access item count

// Moveset bitfields
//   layout: 0000000000000000CIMMMMMMMMMMMMMM (class flag, item flag, move ID)
#define MOVESLOT_ID_MASK  0x3FFF /// Bitmask to access move ID
#define MOVESLOT_ITEM     0x4000 /// Flag: from item
#define MOVESLOT_CLASS    0x8000 /// Flag: from class

typedef struct ElemStats {
	u16 power;
	u16 resist;
} ElemStats;

/// Current status of a unit (player character or enemy)
typedef struct Unit {

    char name[15]; // null-terminated
    
    u8 level;

    u16 baseHP;
    u16 basePP;
    u16 percentHP;
    u16 percentPP;
    u16 baseAttack;
    u16 baseDefense;
    u16 baseAgility;
    u8  baseLuck;
    u8  baseTurns;
    u16 baseHPRegen;
    u16 basePPRegen;
	ElemStats baseElem[4];
    
    u16 maxHP;
    u16 maxPP;
    u16 HP;
    u16 PP;
    u16 attack;
    u16 defense;
    u16 agility;
    u8  luck;
    u8  turns;
    u16 HPRegen;
    u16 PPRegen;
    ElemStats elem[4];
    
    u32 psynergy[32];

    u16 items[16];
    
    u32 djinn[4];
    u32 setDjinn[4];
    u8  numDjinn[4];
    u8  numSetDjinn[4];
    
    u32 aiMove;   // only used by enemy AI
    u32 exp;
    u8  pcID;
    u8  curClass;
    
    u8 side;
    
	// status effects:
    u8 guard;     // Defend, barrier, Haze
    u8 epowerMod[4];
    u8 equipCurse;
    u8 poison;    // poison, venom
    u8 attackModTurns;
    u8 attackMod;
    u8 defenseModTurns;
    u8 defenseMod;
    u8 resistModTurns;
    u8 resistMod;
    u8 delude;
    u8 confuse;   // unimplemented status
    u8 charm;     // unimplemented status
    u8 stun;
    u8 sleep;
    u8 psySeal;
    u8 regenerate;
    u8 reflect;   // unimplemented status
    u8 haunt;
    u8 deathCurse;
    u8 critBoost;
    u8 counter;   // Reflux, Counter Rush
    u8 moveTwice; // Kite
    u8 cantMove;  // Ground, etc
    u8 agilityModTurns;
    u8 agilityMod;
    u8 challenge; // unused status, prevents fleeing ("<name> rises to the challenge!")

	/// For player units, this is the PC ID. For enemy units, this is the enemy type ID + 8.
    u16 ID;

} Unit;

/// @return a pointer to the player or enemy unit with the given index.
/// For player units, this is the PC ID; for enemy units, this is the index in the enemy formation.
extern Unit* GetUnit(u8 unitID);

/// @return the size of the player's party.
extern u8 GetPartySize(void);


//= Items ======================================================================================

// Item flags
#define ITEM_F_CURSED       0x01
#define ITEM_F_NO_UNEQUIP   0x02
#define ITEM_F_ARTIFACT     0x04
#define ITEM_F_KEY_ITEM     0x08
#define ITEM_F_STACKABLE    0x10
#define ITEM_F_NO_TRANSFER  0x20

// Item types
#define ITEM_T_BASIC       0
#define ITEM_T_WEAPON      1
#define ITEM_T_BODY_ARMOR  2
#define ITEM_T_HAND_ARMOR  3
#define ITEM_T_HEAD_ARMOR  4
#define ITEM_T_BOOTS       5
#define ITEM_T_PSYNERGY    6
#define ITEM_T_TRIDENT     7
#define ITEM_T_RING        8
#define ITEM_T_CLOTHES     9

// Weapon types
#define WEAPON_LONG_SWORD   0
#define WEAPON_LIGHT_BLADE  1
#define WEAPON_AXE          2
#define WEAPON_MACE         3
#define WEAPON_STAFF        4
#define WEAPON_ANKH         5

// Equipment effects
#define EQUIP_NONE           0
#define EQUIP_BASE_HP        1
#define EQUIP_HP_REGEN       2
#define EQUIP_BASE_PP        3
#define EQUIP_PP_REGEN       4
#define EQUIP_AGILITY        5
#define EQUIP_LUCK           6
#define EQUIP_BASE_HP_DOWN   7  // (unused)
#define EQUIP_HP_REGEN_DOWN  8  // (unused)
#define EQUIP_BASE_PP_DOWN   9  // (unused)
#define EQUIP_PP_REGEN_DOWN  10 // (unused)
#define EQUIP_ATTACK_DOWN    11 // (unused)
#define EQUIP_DEFENSE_DOWN   12 // (unused)
#define EQUIP_AGILITY_DOWN   13
#define EQUIP_LUCK_DOWN      14 // (unused)
#define EQUIP_EARTH_POWER    15
#define EQUIP_WATER_POWER    16
#define EQUIP_FIRE_POWER     17
#define EQUIP_WIND_POWER     18
#define EQUIP_EARTH_RESIST   19
#define EQUIP_WATER_RESIST   20
#define EQUIP_FIRE_RESIST    21
#define EQUIP_WIND_RESIST    22
#define EQUIP_CRIT_BOOST     23
//      ?                    24
#define EQUIP_CLERICS_RING   25
#define EQUIP_EXTRA_TURNS    26 // (unused)
#define EQUIP_LURE           27

typedef struct EquipEffect {
	u8  effect;
	u8  value;
	u16 _unk2;
} EquipEffect;

/// Attributes of an item.
typedef struct Item {

	u16 price;

	u8  type;
	u8  flags;
	u16 canEquip;

	u16 icon;

	u16 attack;
	u8  defense;
	u8  unleashRate;
	u8  useEffect;

	u8  _unk0D;
	u16 _unk0E;
	u32 _unk10;
	u32 _unk14;

	/// Effects of equipping this item
	EquipEffect equipEffects[4];
	/// Psynergy bestowed by equipping this item
	u16 bestow;

	u16 _unk2A;
} Item;

/// @return info for the given item ID.
extern const Item* GetItemInfo(u16 item);

/// @return true if the given unit can equip the given item ID.
extern bool8 CanEquipItem(u8 unit, u16 item);

/// @return the item in the given slot of the given unit's inventory.
extern u16 GetInventoryItem(u8 unit, u8 slot);

/// @return the equipment slot this item can be equipped to.
extern u8 GetItemEquipSlot(u16 item);

/// @return the first empty slot in a unit's inventory.
extern u8 FindEmptyInventorySlot(u8 unit);

/// Give an item to a unit.
extern int GiveItem(u8 unit, u16 item);

/// Search a unit's inventory for an item.
/// @return the first inventory slot found, or -1
extern int FindInventoryItem(u8 unit, u16 item);

/// Search the entire party's inventories for an item.
/// @return the first unit ID found, or -1
extern int FindPartyInventoryItem(u16 item);

/// Set an inventory item to be equipped to the unit holding it.
extern int EquipItem(u8 unit, u8 slot);

/// @return true if an inventory item can be unequipped.
extern bool8 CanUnequipItem(u8 unit, u8 slot);

/// @return true if an inventory item can be tossed.
extern bool8 CanTossItem(u8 unit, u8 slot);

/// Set an inventory item to be broken.
extern int BreakItem(u8 unit, u8 slot);

/// Set an inventory item to not be broken.
extern int RepairItem(u8 unit, u8 slot);


//= Moves ======================================================================================

// Move type bitfields
#define MOVE_T_MASK    0x0F /// Type bitmask
#define MOVE_T_FIELD   0x40 /// Flag: usable on field
#define MOVE_T_BATTLE  0x80 /// Flag: usable in battle

// Move type values (MOVE_T_MASK)
#define MOVE_T_HEAL        1
#define MOVE_T_STATUS      2
#define MOVE_T_ATK_PLUS    3
#define MOVE_T_ATK_MUL     4
#define MOVE_T_POWER       5
#define MOVE_T_POWER_LOW   6
#define MOVE_T_SPECIAL     7
#define MOVE_T_SUMMON      8
#define MOVE_T_OTHER       9
#define MOVE_T_PP_DAMAGE   10
#define MOVE_T_PP_HEAL     11

// Move targets
#define TARGET_NONE   0
#define TARGET_ENEMY  1
#define TARGET_ALLY   2
#define TARGET_SELF   4

// Move ranges
// TODO: add unused ranges
#define RANGE_1     1
#define RANGE_3     2
#define RANGE_5     3
#define RANGE_7     4
#define RANGE_ALL (-1)

// Move battle effects
#define EFFECT_NONE                    0
//      ?                              1
//      ?                              2
#define EFFECT_CURE_POISON             3
#define EFFECT_RESTORE                 4
#define EFFECT_REVIVE                  5
#define EFFECT_RAISE_ATTACK            6
#define EFFECT_RAISE_ATTACK_ALL        7
#define EFFECT_LOWER_ATTACK            8
#define EFFECT_LOWER_ATTACK_ALL        9
#define EFFECT_RAISE_DEFENSE           10
#define EFFECT_RAISE_DEFENSE_ALL       11
#define EFFECT_LOWER_DEFENSE           12
#define EFFECT_LOWER_DEFENSE_ALL       13
#define EFFECT_RAISE_RESIST            14
#define EFFECT_RAISE_RESIST_ALL        15
#define EFFECT_LOWER_RESIST            16
#define EFFECT_LOWER_RESIST_ALL        17
#define EFFECT_POISON                  18
#define EFFECT_VENOM                   19
#define EFFECT_DELUDE                  20
#define EFFECT_CONFUSE                 21 // unused
#define EFFECT_CHARM                   22 // unused
#define EFFECT_STUN                    23
#define EFFECT_SLEEP                   24
#define EFFECT_PSY_SEAL                25
#define EFFECT_HAUNT                   26
#define EFFECT_INSTAKILL               27
#define EFFECT_CURSE                   28
#define EFFECT_REGENERATE              29
#define EFFECT_REFLECT                 30 // unused
#define EFFECT_HP_DRAIN                31
#define EFFECT_PP_DRAIN                32
#define EFFECT_BREAK                   33
#define EFFECT_LOWER_TO_1HP_CHANCE     34
#define EFFECT_IGNORE_HALF_DEF_CHANCE  35
//      ?                              36
//      ?                              37
//      ?                              38
//      ?                              39
//      ?                              40
//      ?                              41
//      ?                              42
//      ?                              43
//      ?                              44
#define EFFECT_DO_NOTHING              45
#define EFFECT_GUARD_50                46
#define EFFECT_GUARD_90                47
//      ?                              48
//      ?                              49
//      ?                              50
//      ?                              51
#define EFFECT_DAMAGE_PP               52
#define EFFECT_IMMOBILIZE              53
//      ?                              54
#define EFFECT_SELF_DESTRUCT           55
#define EFFECT_REVIVE_50               56
#define EFFECT_REVIVE_80               57
#define EFFECT_LOWER_AGILITY           58
#define EFFECT_BOOST_AGILITY           59
#define EFFECT_HP_DRAIN_HEAL_HALF      60
#define EFFECT_HEAL_60P_HP             61
#define EFFECT_HEAL_30P_HP             62
#define EFFECT_HEAL_7P_PP              63
#define EFFECT_RESTORE_ALL             64
#define EFFECT_DMG_x2_CHANCE           65
#define EFFECT_x2_TURNS_NEXT_TURN      66
#define EFFECT_PSY_SEAL_ALWAYS         67
//      ?                              68
#define EFFECT_DMG_x3_CHANCE           68
#define EFFECT_HP_DRAIN_HEAL_PP        69
#define EFFECT_HEAL_50P_HP             70
#define EFFECT_HEAL_70P_HP             71
#define EFFECT_GUARD_60                72
#define EFFECT_REVIVE_60               73
#define EFFECT_COUNTER                 74
#define EFFECT_DELUDE_ALL              75
#define EFFECT_FAST_HEAL_40P_HP        76
#define EFFECT_HEAL_10P_PP             77
#define EFFECT_HEAL_30P_PP             78
#define EFFECT_INVISIBLE               79
#define EFFECT_CURSE_ALL               80
#define EFFECT_END_TURN                81
#define EFFECT_REMOVE_TARGET           82
#define EFFECT_IMMOBILIZE_CHANCE       83
#define EFFECT_DAMAGE_PP_10P           84
#define EFFECT_STUN_ALL                85
//      ?                              86
#define EFFECT_SIGNAL_WHISTLE          86
#define EFFECT_REVIVE_ENEMY            87
#define EFFECT_GUARD_90_SINGLE_TARGET  88
#define EFFECT_DMG_x2_OR_x3_CHANCE     89
#define EFFECT_RAIDENS_WRATH           90
#define EFFECT_TRIDENT                 91

/// Attributes of a move (Psynergy, unleash, monster skill, etc.)
typedef struct Move {
	u8  target;
	u8  flags;
	u8  element;
	u8  effect;
	u16 icon;
#if !GS1
	u8  utility;
#else // GS1
	u8  _pad;
#endif
	u8  _unk;
	u8  range;
	u8  cost;
	u16 power;
#if GS1
	u8  utility;
#endif
} Move;

/// @return info for the given move ID.
extern const Move* GetMoveInfo(u16 move);

/// @return `true` if the given unit has the given move.
extern bool8 HasMove(u8 unit, u16 move);

/// Give an innate move to a player character.
extern int GiveInnateMove(u8 unit, u16 move);


//= Djinn ======================================================================================

/// Attributes of a djinni.
typedef struct Djinni {
	/// Move ID to unleash in battle
	u32 unleash;
	// Stat boosts when set:
	u8 HP;
	u8 PP;
	u8 attack;
	u8 defense;
	u8 agility;
	u8 luck;
} Djinni;

/// @return info for the given djinni ID.
extern const Djinni* GetDjinniInfo(u8 element, u8 djinniID);


//= Summons ====================================================================================

/// Attributes of a summon.
typedef struct Summon {
	/// Move ID when used
	u16 move;
	/// Standby Djinn needed to summon
	u8  djinnCost[4];
} Summon;

/// @return info for a given summon ID.
extern const Summon* GetSummonInfo(u8 summonID);


//= Player Characters ==========================================================================

/// Base attributes of a player character.
typedef struct PCBaseStats {
	
	// ...

} PCBaseStats;

/// @return info for the given player character ID.
extern const PCBaseStats* GetPCBaseStats(u8 pcID);


//= Enemies ====================================================================================

/// Base attributes of an enemy type.
typedef struct Enemy {
	
	/// Unused, seems to be where enemy names were originally stored.
	/// Same length as the `Unit` struct's name field, all enemies just have it filled with space characters.
	char oldName[15];

	u8  level;
	u16 HP;
	u16 PP;
	u16 attack;
	u16 defense;
	u16 agility;
	u8  luck;
	u8  turns;
	u8  HPRegen;
	u8  PPRegen;

#if GS1
	u8  _unk[10];
#endif
	u16 items[4];
	u8  itemCounts[4];
	u8  elemStatsID;
	u8  aiLevel;

#if GS1
	u16 _unk2;
#endif
	u16 moves[8];
#if !GS1
	u16 _unk2;
#endif

	u8  weakToEffects[4];
	u16 coins;
	u16 dropItem;
	u16 dropRate;
	u16 exp;

} Enemy;

typedef struct EnemyAppearance {
	u16 spriteID;
	u8  attackAnim; // standard attack
	u8  colorswap: 5;
	u8  deathSFX:  3;
	u32 height;
} EnemyAppearance;

/// @return info for the given enemy type ID.
extern const Enemy* GetEnemyInfo(u16 enemyID);


//= Treasure ===================================================================================

// Treasure types
#define TREASURE_CHEST           0
#define TREASURE_MIMIC           1
#define TREASURE_PSYNERGY_STONE  2
#if GS2
#define TREASURE_BURIED          3
#define TREASURE_SUMMON_TABLET   4
#define TREASURE_WATER           5
#endif // GS2

/// ...
typedef struct Treasure {

	// ...

} Treasure;

// ...


//= Debug Party Presets ========================================================================

#if GS1
#define DEBUG_PRESET_PC_NUM_ITEMS  4
#else // GS2
#define DEBUG_PRESET_PC_NUM_ITEMS  6
#endif

typedef struct Debug_PresetPC {
	u8  pcID;
	u8  level;
	u8  numDjinn[4];
	u16 items[DEBUG_PRESET_PC_NUM_ITEMS];
	u16 moves[2];
} Debug_PresetPC;

/// Overwrite the current party with a preset party.
extern void Debug_LoadPresetParty(u16 partyID);


#endif // RPG_H
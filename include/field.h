// field.h
#ifndef FIELD_H
#define FIELD_H

#include <gba/types.h>

#include "actor.h"
#include "sprite.h"
#include "camera.h"

#if   GS1
#include "gs1/maps.h"
#elif GS2
#include "gs2/maps.h"
#endif

// Cardinal angles
#define ANGLE_WEST   0x0000
#define ANGLE_SOUTH  0x4000
#define ANGLE_EAST   0x8000
#define ANGLE_NORTH  0xC000

// Pseudo map IDs for other gamemodes (used by RunGame)
#if GS2
#define MAP_SUPER_LUCKY_DICE  507
#endif
#define MAP_LUCKY_WHEELS      508
#define MAP_LUCKY_DICE        509
#define MAP_BATTLE            510

// Player modes (gState.playerMode)
#if GS2
#define PLAYER_WALK           0
#define PLAYER_WALK_WORLD     1
#define PLAYER_CLIMB          2
#define PLAYER_ROPE_CLIMB     3
#define PLAYER_ROPE_WALK      4
#define PLAYER_SAND           5
#define PLAYER_SHIP           6
#define PLAYER_SHIP_WORLD     7
#define PLAYER_SHIP_HOVER     8
#define PLAYER_SAND_WORLD     9
#define PLAYER_HOVER          10
#define PLAYER_WALK_SLIPPERY  11 // (unused)
#define PLAYER_STOP           12
#endif // GS2

// Actor behavior IDs
#define ACTOR_STOP          1
#define ACTOR_WANDER1       2
#define ACTOR_WANDER2       3
#define ACTOR_WANDER3       4
//      ?                   5
#define ACTOR_LOOKATPLAYER  6
#define ACTOR_DECORATION    7
#if !GS1
#define ACTOR_CRYING        8
//      ?                   9
//      ?                   10
#define ACTOR_NOSHADOW      11
#endif // !GS1

// Height tile types
#if GS2
#define HEIGHT_FLAT    0x0
#define HEIGHT_SLOPEX  0x1
#define HEIGHT_SLOPEY  0x2
//      ?              0x3
//      ?              0x4
//      ?              0x5
//      ?              0x6
//      ?              0x7
//      ?              0x8
//      ?              0x9
//      ?              0xA
//      ?              0xB
//      ?              0xC
//      ?              0xD
//      ?              0xE
//      ?              0xF
#endif // GS2


/// ...
extern struct MapCode gMapCode;


/// Start a cutscene.
/// If debug mode is enabled, this allows fast-forwarding dialogue by pressing R.
extern void CutsceneStart(void);

/// End the current cutscene.
extern void CutsceneEnd(void);


//= Map Data ===================================================================================

/// ...
typedef struct Map {
	u16 mapcode;
	u8  area;
	u8  type;
	u16 mapdata;
	u16 unkFile4;
} Map;

/// ...
typedef struct MapData {
	u16 file;
	u16 palette;
	u16 tilesets[3];
	u16 tilesetAnim;
} MapData;

/// ...
typedef struct MapFile {
	u32   _unk00;
	u32   _unk04;
	u32   _unk08;
	u32   _unk0C;
	u32   _unk10;
	u32   _unk14;
	u32   _unk18;
	u32   _unk1C;
	u32   _unk20;
	void* _unk24;
	const u8* heightTileset; // LZ
	const u8* tilemap;       // LZ
	const u8* heightmap;     // LZ
	const u8* tileAnims;     // LZ
	const u8* layer2Tilemap; // LZ
	const u8* objects;       // LZ
} MapFile;


//= Map Code ===================================================================================

// Field event types
#define EVENT_SPEAK     0
#define EVENT_DOOR      1
#define EVENT_COLLIDE   2
#define EVENT_CHECK     3
#define EVENT_USE_ITEM  4
#define EVENT_USE_MOVE  5
//      ?               6
//      ?               7
#if GS2
//      ?               8
//      ?               9
#endif // GS2

#define EVENT_ACTOR     0x10
//      ?               0x20

// ...
#define EVENT_WEST      (ANGLE_WEST  << 16)
#define EVENT_SOUTH     (ANGLE_SOUTH << 16)
#define EVENT_EAST      (ANGLE_EAST  << 16)
#define EVENT_NORTH     (ANGLE_NORTH << 16)

#define EVENT_T_ACTOR   

// Field moves
#define FIELDMV_NONE       0
#define FIELDMV_MOVE       1
#define FIELDMV_MIND_READ  2
#define FIELDMV_PLY        3
#define FIELDMV_FORCE      4
#define FIELDMV_DOUSE      5
#define FIELDMV_FROST      6
#define FIELDMV_LIFT       7
#define FIELDMV_REVEAL     8
#define FIELDMV_HALT       9
#define FIELDMV_CLOAK      10
#define FIELDMV_CARRY      11
#define FIELDMV_GROWTH     12
#define FIELDMV_CATCH      13
#define FIELDMV_WHIRLWIND  14
#define FIELDMV_RETREAT    15
#define FIELDMV_AVOID      16
#if GS2
#define FIELDMV_LASH       17
#define FIELDMV_POUND      18
#define FIELDMV_TREMOR     19
#define FIELDMV_SCOOP      20
#define FIELDMV_BURST      21
#define FIELDMV_PARCH      22
#define FIELDMV_SAND       23
#define FIELDMV_HOVER      24
#define FIELDMV_CYCLONE    25
#define FIELDMV_BLAZE      26
#define FIELDMV_GRIND      27
#define FIELDMV_MAGNET     28 // unused
#define FIELDMV_ARROW      29 // unused
#define FIELDMV_TELEPORT   30
#endif // GS2

/// Map event function
typedef union MapEventFn {
	/// Function for actor events
	void (*actor)(int actor);
	/// Function for item use events
	void (*item)(int item, int count, int slot);
	/// Function for field move events
	void (*move)(bool8 active, int frame);
} MapEventFn;

/// ...
typedef struct MapEntrance {
	u16 warp;
	u16 flagID;
	u16 x;
	u16 y;
	u16 z;
	u16 cameraX;
	u16 cameraY;
	u16 cameraMinX;
	u16 cameraMinY;
	u16 cameraMaxX;
	u16 cameraMaxY;
	// padding?
} MapEntrance;

/// ...
typedef struct MapSpecialExit {
	u16 minX;
	u16 minY;
	u16 minZ;
	u16 maxX;
	u16 maxY;
	u16 maxZ;
	u16 flagID;
	u16 exitID;
} MapSpecialExit;

/// ...
typedef struct MapActor {
	u16  _unk00;
	u16  _unk02;
	u32  behavior;
	vec3 pos;
	u16  facing;
	u8   _unk16;
	u8   flags;
} MapActor;

/// ...
typedef struct MapEvent {
	/// Event bitfield format:
	/// aaaabbbbppppppppppppppppfffftttt
	///   T: type
	///   F: flags
	///   D: facing angle
	u32 event;
	u16 target; /// actor or tile event ID
	u16 flagID;
	union {
		u32 text;
		MapEventFn func;
	};
} MapEvent;

/// ...
typedef struct MapCode {

	u32 _thunk0;
	/// Called on map load to initialize the current map.
	int (*Init)(void);

	u32 _thunk1;
	/// @return a list of the map's entrance points.
	const MapEntrance* (*GetEntrances)(void);

	u32 _thunk2;
	/// @return a list of the map's exit points.
	const u32* (*GetExits)(void);

	u32 _thunk3;
	/// @return a list of map actors to load.
	const MapActor* (*GetActors)(void);

	u32 _thunk4;
	/// @return a list of the map's events.
	const MapEvent* (*GetEvents)(void);

	u32 _thunk5;
	/// @return an optional list of this map's special exits.
	/// Special exits are used for ladders and other triggers in 3D space.
	const MapSpecialExit* (*GetSpecialExits)(void);

#if !GS1
	u32 _thunk6;
	/// Called on map load before `Init`, to initialize the current map.
	int (*PreInit)(void);
#endif // !GS1

} MapCode;


//= Tilemaps ===================================================================================

/// ...
typedef struct MapLayer {

	/// ...
	vec2 screenPos;

	/// ...
	vec2 offset;

	/// ...
	vec2 parallax;

	vec2 _unk18;
	vec2 _unk20;
	u16  _unk28;

	u16 tilemapOffset;

	u16  _unk2C;
	u16  _unk2E;

	u32* tilemap;
	u8*  heightmap;

} MapLayer;

/// Copy a rectangular region of map tiles within the current map.
extern void CopyMapTiles(u16 srcX, u16 srcY, u16 destX, u16 destY, u16 width, u16 height);

#if !GS1
/// ...
extern void CopyMapVRAMTiles(u16 srcX, u16 srcY, u16 destX, u16 destY, u16 width, u16 height);

/// ...
extern void CopyMapBufferTiles(u16 srcX, u16 srcY, u16 destX, u16 destY, u16 width, u16 height);
#endif // !GS1


//= Actors =====================================================================================

// Emote bubble types
#if GS1
#define EMOTE_FROWN      0
#define EMOTE_EXCLAIM    1
#define EMOTE_QUESTION   2
#define EMOTE_HEART      3
#define EMOTE_GLARE      4
#define EMOTE_IDEA       5
#define EMOTE_ANGER      6
#define EMOTE_SILENT     7
#define EMOTE_SMILE      8
#define EMOTE_SWEATDROP  9
#elif GS2
#define EMOTE_EXCLAIM    0
#define EMOTE_QUESTION   1
#define EMOTE_SWEATDROP  2
#define EMOTE_ANGER      3
#define EMOTE_HEART      4
#define EMOTE_SILENT     5
#define EMOTE_IDEA       6
#define EMOTE_GLARE      7
#define EMOTE_SMILE      8
#define EMOTE_FROWN      9
#endif

/// ...
typedef struct FieldCamera {
	vec2 pos;
	vec2 min;
	vec2 max;
} FieldCamera;

/// @return the actor object corresponding to the given map actor ID.
/// Map actor IDs 0-7 are special and correspond to the 8 player characters (`PC_*` constants)
extern Actor* GetMapActor(int actor);

/// ...
extern void MapActor_SetSpeed(int actor, fx32 speed, fx32 accel);

/// ...
extern void MapActor_SetBehavior(int actor, const u32* behavior);

/// ...
extern void MapActor_Stop(int actor);

#if GS2
/// Called from `MapInit` to initialize the graphics for Lash ropes.
extern void InitLashRopes(void);

/// Called from `MapInit` to initialize the graphics for vine/chain swings.
/// `spriteID` should be either `SPR_SWINGING_VINE` or `SPR_SWINGING_CHAIN`.
extern void InitSwings(u16 spriteID);
#endif // GS2


//= Weather ====================================================================================

// Start rain effect
extern void StartRain(void);

// Start falling snow effect (unused)
extern void StartSnow(void);

// Start thunder effect
extern void StartThunder(void);

// Start earthquake and falling dust effect
extern void StartEarthquake(void);

#if GS2
// Start distant falling snow effect (used in Northern Reaches)
extern void StartDistantSnow(void);

// Start blizzard effect
extern void StartBlizzard(void);

// Stop blizzard effect
extern void StopBlizzard(void);
#endif // GS2


//==============================================================================================

/// Global state singleton for the field
typedef struct FieldState
{
	// ...
	
	FieldCamera camera;

	// ...

	MapLayer mapLayers[3];

} FieldState;

/// Global state singleton for the world map
typedef struct WorldMapState
{
	// ...

} WorldMapState;

/// Opaque: referenced by `MapState.loadActors` (as a pointer) but not defined
/// anywhere in GS-headers yet. Forward-declared so the layout stays unasserted.
typedef struct MapActorInfo MapActorInfo;

/// Global state singleton for current map
typedef struct MapState
{
	/// ...
	const MapActorInfo* loadActors;

	u8 __pad004[0xC];

	/// ...
	const MapEvent* events;

	/// ...
	Actor* actors[65];

	u8 __pad118[0x46];

	/// ...
	bool16 startPressed;

	u8 __pad160[0x48];

	/// ...
	u32* tilemap;

	u8 __pad1AC[0x14];

	/// ...
	u32 transition;

	u16 _unk1C4;
	u16 _unk1C6;
	/// ...
	u32 transitionSpeed;

	

	// ...

	Actor* cameraActor;

	// ...

} MapState;


#endif // FIELD_H
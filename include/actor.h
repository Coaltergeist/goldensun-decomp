// actor.h
#ifndef ACTOR_H
#define ACTOR_H

#include <gba/types.h>

#include "sprite.h"

/// ...
#define MAX_ACTORS 64

struct Actor;

typedef void (*ActorFn)(struct Actor* actor);

/**
 * An actor is an object with a sprite that occupies a position in 3D space.
 * Actors are used on the field for characters, objects, and particles, and
 * are also used in battle for player characters and enemies.
 * Up to `MAX_ACTORS` actors can exist at once, which by default is 64.
 */
typedef struct Actor {

	/// Actor update script. This runs every frame.
	u32* script;
	u16  scriptPos; /// Current index into actor update script

	/// Current facing angle
	u16 facing;

	/// Current XYZ position
	vec3 pos;
	/// Current Y position of the floor below this actor
	fx32 floorPos;

	/// Sprite scale factor
	vec2 scale;

	/// Hitbox diameter. Initialized from `SpriteInfo.actorWidth`
	u16 width;

	/// Current map layer
	u8 layer;

	/// ...
	u8 flags;

	/// Current velocity (as a vector)
	vec3 motion;
	/// Current speed (as a scalar)
	fx32 speed;
	/// Current acceleration
	fx32 accel;

	/// XYZ position from the previous frame
	vec3 prevPos;

	/// Y speed multiplier on landing from a fall
	fx32 bounce;
	/// Falling acceleration
	fx32 gravity;

	/// ...
	fx32 _unk4C;

	/// Pointer to this actor's sprite.
	Sprite* sprite;

	/// ...
	bool8 visible;

	/// ...
	u8 _unk55;

	/// ...
	u8 _unk56;

	/// ...
	u8 scriptVar;

	/// ...
	u8 _unk58;
	u8 _unk59;
	u8 _unk5A;

	/// ...
	bool8 stop;

	/// ...
	u8 _unk5C;
	/// ...
	u8 scriptLoop;

	/// ...
	u16 waitTimer;

	/// ...
	u32 _unk60;
	u32 _unk64;
	u32 _unk68;

	/// If non-null, this function is called every frame
	ActorFn update;

#if !GS1
	/// ...
	vec3 _unk70;

	/// ...
	u32  _unk7C;
#endif // !GS1

} Actor;

/// Allocate a new actor without initializing it.
extern Actor* NewActor(void);

/// Create and initialize a new actor.
extern Actor* CreateActor(u16 spriteID, fx32 x, fx32 y, fx32 z);

/// Delete an actor.
extern void DeleteActor(Actor* actor);

/// Set this actor's script.
extern void Actor_SetScript(Actor* actor, const u32* script);

/// Set this actor's animation.
extern void Actor_SetAnim(Actor* actor, u8 anim);

/// Set this actor's animation speed.
extern void Actor_SetAnimSpeed(Actor* actor, u8 speed);

/// Set this actor's animation and animation speed.
extern void Actor_SetAnimAndSpeed(Actor* actor, u8 anim, u8 speed);

/// Set this actor's sprite rotation (not facing direction).
extern void Actor_SetRotation(Actor* actor, u16 rotation);

/// Set this actor's sprite ID.
extern void Actor_SetSpriteID(Actor* actor, u16 spriteID);

/// Add a new layer to this actor's sprite.
extern void Actor_AddSpriteLayer(Actor* actor, u16 spriteID);

/// Stop this actor's script.
extern void Actor_Stop(Actor* actor);

/// Wait until this actor's script ends.
extern void Actor_WaitScript(Actor* actor);

/// Set this actor's sprite flags.
extern void Actor_SetSpriteFlags(Actor* actor, u8 flags);

/// Set this actor's sprite colorswap mode.
/// @see `COLORS_*` constants in `constants/sprite.h` for a list of all colorswap modes.
extern void Actor_SetColorswap(Actor* actor, u8 colorswap);

/// @return this actor's sprite ID.
extern u16 Actor_GetSpriteID(Actor* actor);

/// Set this actor's position.
extern void Actor_SetPos(Actor* actor, fx32 x, fx32 y, fx32 z);

/// Move this actor one increment at the actor's movement speed toward the destination position.
/// This should be called once per frame, such as in an update function or a `WaitFrames` loop.
extern void Actor_TravelTo(Actor* actor, fx32 x, fx32 y, fx32 z);

/// Set this actor's update function. (unused, `actor->update` is always just set directly.)
extern void Actor_SetUpdateFunc(Actor* actor, ActorFn func);


// Actor script commands
enum {                     // GS1 GS2
	CMD_WAIT,              /* 0   0  */ /// frames
	CMD_WAITMOVEMENT,      /* 1   1  */ /// --
	CMD_SETPOS,            /* 2   2  */ /// ...
#if !GS1
	CMD_GOAWAY,            /* --  3  */ /// ...
#endif
	CMD_TRAVELTO,          /* 3   4  */ /// ...
	CMD_TRAVEL,            /* 4   5  */ /// ...
	CMD_FACETARGET,        /* 5   6  */ /// ...
	CMD_FOLLOWTARGET,      /* 6   7  */ /// ...
	CMD_UNUSED,            /* 7   8  */ /// arg1, arg2 (unused)
	CMD_WANDER,            /* 8   9  */ /// ...
	CMD_UNK10,             /* 9   10 */ /// TODO ...
	CMD_FOLLOWTARGETWAIT,  /* 10  11 */ /// ...
	CMD_CAMERA,            /* 11  12 */ /// --
	CMD_LOOP,              /* 12  13 */ /// nloops, marker
	CMD_GOTO,              /* 13  14 */ /// marker
	CMD_GOTO_IFNZ,         /* 14  15 */ /// marker
	CMD_GOTO_IFZ,          /* 15  16 */ /// marker
	CMD_STOP,              /* 16  17 */ /// --
	CMD_GETFLAG,           /* 17  18 */ /// flag
	CMD_SETFLAG,           /* 18  19 */ /// flag
	CMD_CLEARFLAG,         /* 19  20 */ /// flag
	CMD_TOGGLEFLAG,        /* 20  21 */ /// flag
	CMD_SETATTR,           /* 21  22 */ /// attr, value
	CMD_ADDATTR,           /* 22  23 */ /// attr, value
	CMD_CMPATTR,           /* 23  24 */ /// attr, value
	CMD_PLAYER,            /* 24  25 */ /// --
#if GS1
	CMD_PLAYER_CLIMB,      /* 25  27 */ /// --
#endif
	CMD_PLAYER_WORLD,      /* 26  26 */ /// --
#if !GS1
	CMD_PLAYER_CLIMB,      /* 25  27 */ /// --
	CMD_PLAYER_ROPE_CLIMB, /* --  28 */ /// --
	CMD_PLAYER_ROPE_WALK,  /* --  29 */ /// --
	CMD_PLAYER_SAND,       /* --  30 */ /// --
	CMD_PLAYER_SHIP,       /* --  31 */ /// --
	CMD_PLAYER_SHIP_WORLD, /* --  32 */ /// --
	CMD_PLAYER_SHIP_HOVER, /* --  33 */ /// --
	CMD_PLAYER_SAND_WORLD, /* --  34 */ /// --
	CMD_PLAYER_HOVER,      /* --  35 */ /// --
	CMD_PLAYER_SLIPPERY,   /* --  36 */ /// --
	CMD_PLAYER_STOP,       /* --  37 */ /// --
#endif // !GS1
	CMD_DELETE,            /* 27  38 */ /// --
	CMD_ANIM,              /* 28  39 */ /// ...
	CMD_NOP,               /* 29  40 */ /// ...
	CMD_SOUND,             /* 30  41 */ /// ...
#if !GS1
	CMD_SOUND_LOCAL,       /* --  42 */ /// ...
#endif
	CMD_SETSCRIPT,         /* 31  43 */ /// script
	CMD_HIDE,              /* 32  44 */ /// --
	CMD_SHOW,              /* 33  45 */ /// --
	CMD_CALLNATIVE,        /* 34  46 */ /// func
	CMD_CAMERA2,           /* 35  47 */ /// ...
#if !GS1
	CMD_TRAVEL2,           /* --  48 */ /// ...
#endif
};

// Actor attribute IDs (for ATTR commands)
#define ATTR_SCRIPT      0
#define ATTR_SCRIPT_POS  1
#define ATTR_FACING      2
//      (unused)         3
//      (unused)         4
#define ATTR_X           5
#define ATTR_Y           6
#define ATTR_Z           7
#define ATTR_RADIUS      8
#define ATTR_SCALE_X     9
#define ATTR_SCALE_Y     10
//      (unused)         11
#define ATTR_MOTION_X    12
#define ATTR_MOTION_Y    13
#define ATTR_MOTION_Z    14
#define ATTR_SPEED       15
#define ATTR_ACCEL       16
#define ATTR_PREV_X      17
#define ATTR_PREV_Y      18
#define ATTR_PREV_Z      19
#define ATTR_BOUNCE      20
#define ATTR_GRAVITY     21
#define ATTR_FLOOR_POS   22
#define ATTR_UNK4C       23 // TODO
#define ATTR_SPRITE      24
#define ATTR_UNK54       25 // TODO
#define ATTR_UNK55       26 // TODO
#define ATTR_UNK56       27 // TODO
#define ATTR_LASTRESULT  28
#define ATTR_UNK58       29 // TODO
#define ATTR_UNK59       30 // TODO
#define ATTR_UNK5A       31 // TODO
#define ATTR_UNK5B       32 // TODO
#define ATTR_ITER        33
#define ATTR_TIMER       34
#define ATTR_UNK64       35 // TODO
#define ATTR_PARENT      36
#define ATTR_EXTRA       37
#define ATTR_UPDATE_FN   38
#define ATTR_UNK62       39 // TODO
#define ATTR_UNK63       40 // TODO

#endif // ACTOR_H
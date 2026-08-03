#ifndef _FIELD_H_
#define _FIELD_H_

#include "gba/types.h"

struct MapState {
    const void * loadActors; // MapActorInfo
    u8 __unk004[0xC];
    const void * events; // MapEvent
    const void * actors[65]; // Actor
    u8 __unk118[0x46];
    bool16 startPressed;
    u8 __unk160[0x1E];
    u16 __unk17E;
    u8 __unk180[0x20];
    u8 __unk1A0[0x8];
    const void *tilemap;
    u8 __unk1AC[0x14];
    u16 __unk1C4;
    u16 __unk1C6;
    u32 transitionSpeed;
    const void *cameraActor; // Actor
};

// One map-actor placement record (an element of a map's actor table).
struct MapActorInfo {
    u16 sprite;    // sprite ID
    u16 __unk02;
    u32 __unk04;
    fx32 x;
    fx32 y;
    fx32 z;
    u16 facing;
    u8 __unk16;
    u8 flags;
};

// One field-event record (an element of a map's Events table).
struct MapEvent {
    u32 event;      // 0x00  packed type/flags/facing/param
    u16 target;     // 0x04  actor or tile-event ID
    u16 flagID;     // 0x06
    union {         // 0x08
        u32 text;
        void *func;
    } action;
};

// One map entrance/warp record (an element of a map's entrance table).
struct MapEntrance {
    u16 warpID;
    u16 flagID;
    u16 x;
    u16 y;
    u16 z;
    u16 __unk0A;
    u16 __unk0C;
    s16 cameraMinX;
    s16 cameraMinY;
    s16 cameraMaxX;
    s16 cameraMaxY;
    u8 __unk16;
    u8 __unk17;
};

// A rectangular special-exit trigger volume (ladders and other 3D-space
// triggers; an element of a map's special-exit table).
struct MapSpecialExit {
    u16 minX;
    u16 minY;
    u16 minZ;
    u16 maxX;
    u16 maxY;
    u16 maxZ;
    u16 flagID;
    u16 exitID;
};

// --- Map / field data tables ---------------------------------------------
// Static data-table entry types, each keyed by a global array.

// One map's header entry (the global map table, keyed by map ID).
struct Map {
    u16 scriptFile;   // 0x00
    u8 area;          // 0x02
    u8 type;          // 0x03
    u16 mapdata;      // 0x04  index into the MapData table
    u16 __unk06;      // 0x06
};

// Tileset/graphics references for a map.
struct MapData {
    u16 file;         // 0x00
    u16 palette;      // 0x02
    u16 tilesets[3];  // 0x04
    u16 tilesetAnim;  // 0x0A
};

// Battle-background reference for a map.
struct MapBattleBG {
    u32 bgFile;       // 0x00
    u32 mapID;        // 0x04
};

// Per-map random-encounter descriptor.
struct MapEncounters {
    u16 mapID;              // 0x00
    u16 doorID;             // 0x02
    u16 flagID;             // 0x04
    u8 encounterTableID;    // 0x06
    u8 __unk07;             // 0x07
};

// Per-world-map-tile random-encounter descriptor.
struct WorldMapEncounters {
    u16 area;               // 0x00
    u16 terrain;            // 0x02
    u16 flagID;             // 0x04
    u16 encounterTableID;   // 0x06
};

// A usable field-move's range parameters.
struct FieldMoveRange {
    u16 fieldMoveID;   // 0x00
    u16 radius;        // 0x02
    u16 height;        // 0x04
    u16 angleRange;    // 0x06
};

// A random-encounter table (enemy groups + weighted rates).
struct EncounterTable {
    u16 encounterRate;        // 0x00
    u16 level;                // 0x02
    u16 enemyGroups[8];       // 0x04
    u8 enemyGroupRates[8];    // 0x14
};

// Djinn-encounter table reference.
struct DjinnEncounter {
    u16 encounterTableID;
    u16 groupIndex;
};

// Per-area background music table entry.
struct AreaMusic {
    u16 area;
    u16 door;
    u16 flagID;
    u16 music;
};

// Per-area name-string table entry.
struct AreaName {
    u16 area;
    u16 door;
    u16 stringID;
    u16 __unk06;
};

// Enemy-group -> battle-music table entry.
struct EnemyBattleMusic {
    u16 music;
    u16 enemyGroup;
};

// One scrolling map background layer (embedded as layers[3] in the field state).
struct MapLayer {
    vec2_t screenPos;   // 0x00
    vec2_t offset;      // 0x08
    vec2_t parallax;    // 0x10
    vec2_t __unk18;     // 0x18
    vec2_t __unk20;     // 0x20
    u16 __unk28;        // 0x28
    u16 startOffset;    // 0x2A
    u16 __unk2C;        // 0x2C
    u16 __unk2E;        // 0x2E
    u32 *tilemap;       // 0x30
    u8 *heightmap;      // 0x34
};                      // 0x38

// Field camera position + clamp bounds.
struct FieldCamera {
    vec2_t pos;   // 0x00
    vec2_t min;   // 0x08
    vec2_t max;   // 0x10
};

// A 2D field particle.
struct Particle2D {
    vec2_t pos;      // 0x00
    vec2_t motion;   // 0x08
    u32 aux;         // 0x10
};

// A 3D field particle.
struct Particle3D {
    vec3_t pos;      // 0x00
    vec3_t motion;   // 0x0C
    fx32 aux;        // 0x18
};

// A map's code vtable (GS1): six (thunk, entry-point) groups, loaded to
// 0x02008000 as the header of the map's RAM-executed code. Each group is a u32
// interworking thunk followed by the entry pointer. GS2 adds a 7th group
// (PreInit); add it under `#if !GS1` when GS2 support lands.
struct MapCode {
    u32 _thunk0;
    int (*Init)(void);                          // 0x04
    u32 _thunk1;
    const struct MapEntrance *(*GetEntrances)(void);    // 0x0C
    u32 _thunk2;
    const u32 *(*GetExits)(void);               // 0x14
    u32 _thunk3;
    const void *(*GetActors)(void);             // 0x1C  (map-actor list)
    u32 _thunk4;
    const struct MapEvent *(*GetEvents)(void);  // 0x24
    u32 _thunk5;
    const struct MapSpecialExit *(*GetSpecialExits)(void); // 0x2C
};                                              // 0x30

#endif // _FIELD_H_

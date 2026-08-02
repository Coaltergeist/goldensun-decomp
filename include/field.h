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

// One map-actor placement record (the elements of a map's actor table, walked
// by LoadMapActors). sizeof == 24 (0x18): pinned by the global array
// MapActorInfo[2] @ 881:0x0200e01c. Field offsets/widths verified from the
// LoadMapActors disassembly (0x0808b3ec, baserom.gba); unexercised fields keep
// __unk names with their Ghidra guess.
struct MapActorInfo {
    u16 sprite;    // sprite ID (flows to CreateActor)
    u16 __unk02;   // ghidra: "flagID" (unverified; not touched by LoadMapActors)
    u32 __unk04;   // read as a word by LoadMapActors, meaning unknown
    fx32 x;
    fx32 y;
    fx32 z;
    u16 facing;
    u8 __unk16;    // ghidra: undefined
    u8 flags;
};

// One field-event record (elements of a map's Events table). sizeof == 12:
// pinned by global Events[24] @ 974:0x02009564 (and others). Layout is the
// GS-headers form, ROM-confirmed against FindMapActorEvent (0x0808d48c) and
// FUN_0808e14c (0x0808e14c): offset 0 is read as a WORD (a packed bitfield),
// not the separate type/param/facing fields the Ghidra export guessed.
struct MapEvent {
    u32 event;      // packed: type/flags/facing/param (GS-headers bit layout)
    u16 target;     // ldrh @4 actor or tile-event ID
    u16 flagID;     // ldrh @6
    union {         // ldr  @8
        u32 text;
        void *func;
    } action;
};

// One map entrance/warp record (elements of a map's entrance table). sizeof
// == 24: pinned by ~20 MapEntrance[N] array globals. Layout agreed by both
// gstypes and GS-headers (all u16/s16 slots); not yet disassembly-confirmed.
struct MapEntrance {
    u16 warpID;
    u16 flagID;
    u16 x;
    u16 y;
    u16 z;
    u16 __unk0A;      // GS-headers: "cameraX" (current camera pos, unverified)
    u16 __unk0C;      // GS-headers: "cameraY" (unverified)
    s16 cameraMinX;
    s16 cameraMinY;
    s16 cameraMaxX;
    s16 cameraMaxY;
    u8 __unk16;       // gstypes: undefined (likely padding)
    u8 __unk17;
};

// A rectangular special-exit trigger volume (elements of a map's special-exit
// table). gstypes and GS-headers are byte-identical here; 8 contiguous u16 =>
// sizeof 16. No size pin or disassembly yet, but the all-u16 layout is
// structurally unambiguous.
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
// The following are static data-table entry types. Each is size-pinned by a
// global array (see struct_asserts.c) and its gstypes layout sums exactly to
// that pin; Map and MapData additionally agree with GS-headers. Single-source
// entries keep gstypes field names; unproven fields stay __unk.

// One map's header entry (the global map table, keyed by map ID). sizeof 8.
struct Map {
    u16 scriptFile;   // 0x00  (GS-headers: "mapcode")
    u8 area;          // 0x02
    u8 type;          // 0x03
    u16 mapdata;      // 0x04  index into the MapData table
    u16 __unk06;      // 0x06  (GS-headers: "unkFile4")
};

// Tileset/graphics references for a map. sizeof 12. gstypes+GS-headers agree.
struct MapData {
    u16 file;         // 0x00
    u16 palette;      // 0x02
    u16 tilesets[3];  // 0x04
    u16 tilesetAnim;  // 0x0A
};

// Battle-background reference for a map. sizeof 8.
struct MapBattleBG {
    u32 bgFile;       // 0x00
    u32 mapID;        // 0x04
};

// Per-map random-encounter descriptor. sizeof 8.
struct MapEncounters {
    u16 mapID;              // 0x00
    u16 doorID;             // 0x02
    u16 flagID;             // 0x04
    u8 encounterTableID;    // 0x06
    u8 __unk07;             // 0x07
};

// Per-world-map-tile random-encounter descriptor. sizeof 8.
struct WorldMapEncounters {
    u16 area;               // 0x00
    u16 terrain;            // 0x02
    u16 flagID;             // 0x04
    u16 encounterTableID;   // 0x06
};

// A usable field-move's range parameters. sizeof 8.
struct FieldMoveRange {
    u16 fieldMoveID;   // 0x00
    u16 radius;        // 0x02
    u16 height;        // 0x04
    u16 angleRange;    // 0x06
};

// A random-encounter table (enemy groups + weighted rates). sizeof 28.
struct EncounterTable {
    u16 encounterRate;        // 0x00
    u16 level;                // 0x02
    u16 enemyGroups[8];       // 0x04
    u8 enemyGroupRates[8];    // 0x14
};

// Djinn-encounter table reference. sizeof 4 (pin).
struct DjinnEncounter {
    u16 encounterTableID;
    u16 groupIndex;
};

// Per-area background music table entry. sizeof 8 (pin); flagID is u16.
struct AreaMusic {
    u16 area;
    u16 door;
    u16 flagID;     // gstypes: enum FlagID (u16 storage)
    u16 music;
};

// Per-area name-string table entry. sizeof 8 (pin).
struct AreaName {
    u16 area;
    u16 door;
    u16 stringID;
    u16 __unk06;    // gstypes: Alignment padding
};

// Enemy-group -> battle-music table entry. sizeof 4 (pin).
struct EnemyBattleMusic {
    u16 music;
    u16 enemyGroup;
};

// One scrolling map background layer. sizeof 56 (computed; gstypes+GS-headers
// agree). Embedded as layers[3] in the field state.
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
};                      // 0x38 = 56

// Field camera position + clamp bounds. sizeof 24 (computed; gstypes+GS-headers).
struct FieldCamera {
    vec2_t pos;   // 0x00
    vec2_t min;   // 0x08
    vec2_t max;   // 0x10
};

// A 2D field particle. sizeof 20 (computed; gstypes+GS-headers).
struct Particle2D {
    vec2_t pos;      // 0x00
    vec2_t motion;   // 0x08
    u32 aux;         // 0x10
};

// A 3D field particle. sizeof 28 (computed; gstypes+GS-headers).
struct Particle3D {
    vec3_t pos;      // 0x00
    vec3_t motion;   // 0x0C
    fx32 aux;        // 0x18
};

#endif // _FIELD_H_

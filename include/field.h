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

#endif // _FIELD_H_

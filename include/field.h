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

#endif // _FIELD_H_
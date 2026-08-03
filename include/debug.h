#ifndef _DEBUG_H_
#define _DEBUG_H_

#include "gba/types.h"

// A debug-menu portrait entry: name string ID + portrait ID.
struct Debug_PortraitName {
    u16 name;      // 0x00
    u16 portrait;  // 0x02
};

// A debug special-warp entry: menu label + handler.
struct Debug_SpecialWarp {
    const char *name;    // 0x00
    void (*func)(void);  // 0x04
};

#endif // _DEBUG_H_

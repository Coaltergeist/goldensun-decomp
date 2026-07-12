#ifndef _PALETTE_H_
#define _PALETTE_H_

#include "gba/types.h"

#define SET_PALETTE(id, value) \
do { \
    u32 _value = value; \
    *((vu16*)(0x05000000) + id) = _value; \
} while (0)

#endif //_PALETTE_H_

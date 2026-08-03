#ifndef _COMPRESSION_H_
#define _COMPRESSION_H_

#include "gba/types.h"

// Huffman decode support types (Golden Sun stores game text Huffman-coded).
// HuffContext is the decoder's running state.

struct HuffTableEntry {
    const u8 *data;      // 0x00
    const u8 *lengths;   // 0x04
};

struct HuffTreeRoot {
    const u8 *base;      // 0x00
    const u16 *offsets;  // 0x04
};

struct HuffContext {
    u32 last;            // 0x00
    const u8 *ptr;       // 0x04
    u32 bits;            // 0x08
};

#endif // _COMPRESSION_H_

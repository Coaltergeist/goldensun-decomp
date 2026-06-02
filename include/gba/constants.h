/* gba/constants.h — bare-name register/constant aliases.
 *
 * The GS-headers (util.h, asm/macros.inc) use libgba/tonc-style BARE register
 * and interrupt names; our gba/io.h uses REG_-prefixed names plus INTR_FLAG_*
 * and DMA_SRC_FIXED. Alias the bare names FF expects onto ours so the headers
 * resolve without touching gba/io.h. Extend as further bare names are needed.
 */
#ifndef GBA_CONSTANTS_H
#define GBA_CONSTANTS_H

#include <gba/io.h>   /* the REG_*, INTR_FLAG_*, DMA_* definitions aliased below */

#define DMA3SAD     REG_DMA3SAD
#define DMA3CNT_H   REG_DMA3CNT_H
#define DMA_S_FIX   DMA_SRC_FIXED
#define IME         REG_IME
#define INTR_TIMER0 INTR_FLAG_TIMER0
#define INTR_DMA1   INTR_FLAG_DMA1

#endif /* GBA_CONSTANTS_H */

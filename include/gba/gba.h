/* gba/gba.h — aggregator for the GBA hardware headers.
 *
 * GS-headers (util.h) angle-includes <gba/gba.h> as the umbrella for the GBA
 * scalar types, memory-mapped I/O registers, and hardware constants. We map
 * that onto our existing in-tree gba/ headers plus the bare-name register
 * aliases in gba/constants.h.
 */
#ifndef GBA_GBA_H
#define GBA_GBA_H

#include <gba/types.h>      /* u8/u16/u32/s8/.../bool8/bool16, NULL */
#include <gba/io.h>         /* REG_*, DMA_*, INTR_FLAG_*, key constants */
#include <gba/constants.h>  /* bare-name aliases the GS-headers expect */

#endif /* GBA_GBA_H */

/* Cluster Func_8002f3c..Func_8002f3c extracted from goldensun/rom_c0/src/rom_2e00_c.s.
 *
 * Total .text for this TU = 4 bytes (= 0x4).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_2e00_c_a.o and rom_c0/src/rom_2e00_c_c.o in
 * goldensun/stage1.ld.
 */

#include "file_table.h"
#include "dma.h"

extern unsigned iwram_3007804[];

void SetRAMBuildDate(void)
{
    void *src = GetFile(FILE_BUILD_DATE);
    DMA3_COPY(src, iwram_3007804, 0x84000003);
    iwram_3007804[3] = 0;
}

void Func_8002f3c(void) {}

extern void *gFileTable[];

void *GetFile(int index) {
    return gFileTable[index];
}

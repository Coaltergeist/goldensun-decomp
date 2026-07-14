/* Cluster Func_801173c..Func_801173c extracted from goldensun/asm/rom_9000/rom_11568_a_c_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_a_c_c_a.o and asm/rom_9000/rom_11568_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
#include "file_table.h"

typedef unsigned short u16;

struct GameState {
    unsigned char pad[0x100];
    u16 field100;
    u16 field102;
};

extern unsigned char iwram_3001e70[];
extern void (*iwram_3001cfc)(void);
extern void Func_801161c(void);
extern void Func_801179c(void);
extern void Func_80113e4(void);
extern void Func_800439c(void *task);
extern void WaitFrames(int frames);
extern void DecompressLZ(unsigned char *src, void *dst);
extern unsigned char gBuffer[];

void Func_801173c(void)
{
    struct GameState *state;

    state = *(struct GameState **)iwram_3001e70;
    iwram_3001cfc = Func_801161c;
    state->field100 = 0;
    state->field102 = 0x9f;
    WaitFrames(1);
    DecompressLZ(GetFile(FILE_d5), gBuffer);
    Func_80113e4();
    Func_800439c(Func_801179c);
    WaitFrames(1);
}

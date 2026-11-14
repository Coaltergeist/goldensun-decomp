#include "nonmatching.h"
#include "dma.h"
#include "dma0.h"

struct MindReadState {
    u32 hofsBuf[2][81];
    u16 unk288;
    u8 bufIdx;
    u8 unk28B[3];
    u16 unk28E;
    u16 actorID;
    u16 unk292;
    u8 paused;
};

INCLUDE_ASM("asm/field/moves/mind_read/Field_MindRead.s");

extern unsigned char iwram_3001ea8[];
extern void Func_8097adc(void);
extern void StopTask(void *task);
extern void Task_08097644(void);
extern void *MapActor_GetActor(unsigned short actorID);
extern void Func_808e0b0(void *actor, int flag);
extern void gfree(int index);

void Func_8097608(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001ea8;
    unsigned short id;
    void *actor;

    Func_8097adc();
    StopTask(Task_08097644);
    id = *(unsigned short *)(base + (0xa4 << 2));
    actor = MapActor_GetActor(id);
    Func_808e0b0(actor, 1);
    Func_809748c();
    gfree(0x16);
}

INCLUDE_ASM("asm/field/moves/mind_read/Task_08097644.s");

void Func_8097868(void)
{
    struct MindReadState *state = *(struct MindReadState **)iwram_3001ea8;

    if (state->paused == 0) {
        u32 *src = state->hofsBuf[state->bufIdx];
        UnknownDMAPrefix();
        DMA0_SET(src, (void *)&REG_BG0HOFS, 0xa2600001);
    }
}

INCLUDE_ASM("asm/field/moves/mind_read/Func_80978c4.s");

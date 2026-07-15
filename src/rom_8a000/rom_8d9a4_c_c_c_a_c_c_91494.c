#include "dma.h"

extern void *galloc_ewram(int slot, u32 size);
extern void *galloc_iwram(int slot, u32 size);
extern void gfree(int slot);
extern void UploadSpriteGFX(int slot, int size, const void *data);
extern void StartTask(void (*task)(void), int priority);
extern void Func_80912b8(void);
extern void *GetFieldActor(int actorId);
extern u8 gState[];

void Func_8091494(void *actor)
{
    void *entity = galloc_ewram(0x24, 0x1c);
    void *buf = galloc_iwram(0xe, 0x80 << 3);
    u32 local;
    register u32 *localPtr asm("r5") = &local;
    int priority;
    register vu16 *reg asm("r3");

    *localPtr = 0x11111111;
    DMA3_SET(localPtr, buf, 0x85000080);

    UploadSpriteGFX(0x5e, 0x80 << 2, buf);
    gfree(0xe);

    priority = 0xc8;
    priority <<= 4;
    StartTask(Func_80912b8, priority);

    {
        u16 v = 0x3f9e;
        reg = &REG_BLDCNT;
        *reg = v;
        v = 0x10;
        reg++;
        *reg = v;
        v = 0x1f;
        reg++;
        *reg = v;
    }

    *localPtr = 0;
    DMA3_SET(localPtr, entity, 0x85000007);

    if (actor == 0) {
        u8 *state = gState;
        u32 offset = 0xfa;
        offset <<= 1;
        state += offset;
        actor = GetFieldActor(*(u32 *)state);
    }
    *(void **)((u8 *)entity + 0x18) = actor;
}

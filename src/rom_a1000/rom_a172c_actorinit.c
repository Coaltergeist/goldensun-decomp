#include "gba/types.h"

#define ActorWorkInit Func_80a17c4

/* アクターワークの状態ビットを初期化する */
void ActorWorkInit(u8 *actor)
{
    register u8 *workActor __asm__("r0") = actor;
    register u32 work __asm__("r3");
    register u32 bits __asm__("r2");
    register u32 old __asm__("r1");

    __asm__ volatile ("" : "+r" (workActor));
    if (workActor != 0) {
        work = 1;
        __asm__ volatile ("" : "+r" (work));
        workActor[5] = work;
        bits = 0x1ff;
        __asm__ volatile ("" : "+r" (bits));
        work = *(u16 *)(workActor + 6);
        __asm__ volatile ("" : "+r" (work));
        old = *(u16 *)(workActor + 0x16);
        __asm__ volatile ("" : "+r" (old));
        bits &= work;
        __asm__ volatile ("" : "+r" (bits));
        work = ~0x1ff;
        __asm__ volatile ("" : "+r" (work));
        work &= old;
        __asm__ volatile ("" : "+r" (work));
        work |= bits;
        __asm__ volatile ("" : "+r" (work));
        *(u16 *)(workActor + 0x16) = work;
        work = *(u16 *)(workActor + 8);
        __asm__ volatile ("" : "+r" (work));
        bits = workActor[0x17];
        __asm__ volatile ("" : "+r" (bits));
        workActor[0x14] = work;
        work = 0x3f;
        __asm__ volatile ("" : "+r" (work));
        work = -work;
        __asm__ volatile ("" : "+r" (work));
        work &= bits;
        __asm__ volatile ("" : "+r" (work));
        workActor[0x17] = work;
        bits = workActor[0x15];
        __asm__ volatile ("" : "+r" (bits));
        work = 4;
        __asm__ volatile ("" : "+r" (work));
        work = -work;
        __asm__ volatile ("" : "+r" (work));
        work &= bits;
        __asm__ volatile ("" : "+r" (work));
        workActor[0x15] = work;
    }
}

#include "gba/types.h"

#define ActorWorkReset Func_80a3d24

extern u8 iwram_3001f2c[];
extern void Func_80a17c4(u8 *actor);

/* 未使用のアクターワークを空き状態へ戻す */
void ActorWorkReset(u16 *used)
{
    register u8 **global __asm__("r3");
    register int stateValue __asm__("r1");
    register u8 *state __asm__("r7");
    register u16 *entry __asm__("r5");
    register int offset __asm__("r6");
    register int emptyState __asm__("r8");
    register int i __asm__("r2");
    register u8 *actor0 __asm__("r0");
    register u8 *actor3 __asm__("r3");
    register int temp __asm__("r1");

    global = (u8 **)iwram_3001f2c;
    __asm__ volatile ("" : "+r" (global));
    stateValue = 13;
    __asm__ volatile ("" : "+r" (stateValue));
    state = *global;
    __asm__ volatile ("" : "+r" (state));
    __asm__ volatile ("sub\tsp, #4" ::: "memory");
    offset = 0x48;
    __asm__ volatile ("" : "+r" (offset));
    entry = used;
    __asm__ volatile ("" : "+r" (entry));
    emptyState = stateValue;
    __asm__ volatile ("" : "+r" (emptyState));
    i = 31;
    __asm__ volatile ("" : "+r" (i));

    do {
        if (*entry++ == 0) {
            __asm__ volatile (
                "ldr\tr0, [r6, r7]"
                : "=r" (actor0)
                : "r" (offset), "r" (state)
                : "memory"
            );
            __asm__ volatile ("" : "+r" (actor0));
            __asm__ volatile ("str\tr2, [sp]" : : "r" (i) : "memory");
            Func_80a17c4(actor0);
            __asm__ volatile (
                "ldr\tr3, [r6, r7]"
                : "=r" (actor3)
                : "r" (offset), "r" (state)
                : "memory"
            );
            temp = emptyState;
            actor3[5] = temp;
            __asm__ volatile ("ldr\tr2, [sp]" : "=r" (i) : : "memory");
        }
        offset += 4;
    } while (--i >= 0);
    __asm__ volatile ("add\tsp, #4" ::: "memory");
}

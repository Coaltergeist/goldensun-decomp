#include "gba/types.h"

#define SubActorMake Func_80a9cf8

extern u8 iwram_3001f2c[];
extern void *_Func_801eb64(int kind, int index, int value, int x);

/* サブアクターを８個作成する */
int SubActorMake(int value)
{
    register u8 **global __asm__("r3");
    register u8 *state __asm__("r3");
    register int work __asm__("r2");
    register void **actor __asm__("r6");
    register int param __asm__("r7");
    register int i __asm__("r5");
    register int y __asm__("r8");
    register int stackY __asm__("r3");
    register void *created __asm__("r0");
    register int result __asm__("r0");

    global = (u8 **)iwram_3001f2c;
    __asm__ volatile ("" : "+r" (global));
    state = *global;
    __asm__ volatile ("" : "+r" (state));
    work = 0xa8;
    __asm__ volatile ("" : "+r" (work));
    actor = (void **)state;
    __asm__ volatile ("" : "+r" (actor));
    __asm__ volatile ("sub\tsp, #4" ::: "memory");
    param = value;
    __asm__ volatile ("" : "+r" (param));
    i = 0;
    __asm__ volatile ("" : "+r" (i));
    y = work;
    __asm__ volatile ("" : "+r" (y));
    actor = (void **)((u8 *)actor + 0xc8);
    __asm__ volatile ("" : "+r" (actor));

    do {
        /* 第５引数は呼出し規約どおりスタックへ置く */
        stackY = y;
        __asm__ volatile ("" : "+r" (stackY));
        __asm__ volatile ("str\tr3, [sp]" : : "r" (stackY) : "memory");
        created = _Func_801eb64(2, i, param, 0xf8);
        i++;
        *actor++ = created;
    } while (i <= 7);

    result = 1;
    __asm__ volatile ("" : "+r" (result));
    __asm__ volatile ("add\tsp, #4" ::: "memory");
    return result;
}

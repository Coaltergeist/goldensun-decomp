#include "gba/types.h"

#define SubActorWorkInit Func_80a9d84

extern u8 iwram_3001f2c[];
extern void Func_80a17c4(u8 *actor);

/* サブアクターワーク５個を初期化する */
void SubActorWorkInit(void)
{
    register u8 **global __asm__("r3");
    register u8 *state __asm__("r3");
    register int work __asm__("r2");
    register u8 **actor __asm__("r5");
    register int posX __asm__("r8");
    register int posY __asm__("r7");
    register int i __asm__("r6");
    register u8 *entry __asm__("r0");
    register int value __asm__("r3");

    global = (u8 **)iwram_3001f2c;
    __asm__ volatile ("" : "+r" (global));
    state = *global;
    __asm__ volatile ("" : "+r" (state));
    work = 0xf8;
    __asm__ volatile ("" : "+r" (work));
    actor = (u8 **)state;
    __asm__ volatile ("" : "+r" (actor));
    posX = work;
    __asm__ volatile ("" : "+r" (posX));
    actor = (u8 **)((u8 *)actor + 0xc8);
    __asm__ volatile ("" : "+r" (actor));
    posY = 0xa8;
    __asm__ volatile ("" : "+r" (posY));
    i = 4;
    __asm__ volatile ("" : "+r" (i));

    do {
        entry = *actor++;
        if (entry != 0) {
            value = posX;
            *(u16 *)(entry + 6) = value;
            value = 0xf0;
            *(u16 *)(entry + 8) = posY;
            entry[0xf] = value;
            Func_80a17c4(entry);
        }
    } while (--i >= 0);
}

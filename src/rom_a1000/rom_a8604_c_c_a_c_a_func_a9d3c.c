#include "gba/types.h"

extern u8 iwram_3001f2c[];
extern void Func_80a9d84(void);
extern void Func_80a17c4(u8 *actor);

void Func_80a9d3c(u8 *enabled)
{
    register u8 **global asm("r3");
    register u8 *savedEnabled asm("r8");
    register u8 **actors asm("r5");
    register int index asm("r6");
    register int y asm("r7");
    register u8 *actor asm("r0");
    register u8 *enabledLow asm("r2");
    register int value asm("r3");

    global = (u8 **)iwram_3001f2c;
    asm volatile("mov r8, r0"
                 : "+r"(global), "=r"(savedEnabled));
    actors = (u8 **)*global;
    asm volatile("" : "+r"(actors));
    Func_80a9d84();
    asm volatile("mov %0, #0"
                 : "=r"(index)
                 : "r"(actors));
    actors = (u8 **)((u8 *)actors + 0xc8);
    asm volatile("" : "+r"(actors));
    y = 0x58;
    do {
        actor = *actors++;
        if (actor != 0) {
            enabledLow = savedEnabled;
            asm volatile("" : "+r"(enabledLow));
            value = enabledLow[index];
            if (value == 0)
                goto next;
            value = 8;
            *(u16 *)(actor + 6) = value;
            value = 0xf0;
            *(u16 *)(actor + 8) = y;
            actor[0xf] = value;
            Func_80a17c4(actor);
            y += 0x10;
        }
next:
        index++;
    } while (index <= 4);
}

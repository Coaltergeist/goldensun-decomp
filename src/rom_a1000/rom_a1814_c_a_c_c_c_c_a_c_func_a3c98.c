#include "gba/types.h"

extern u8 iwram_3001f2c[];
extern void _Sprite_SetAnim(void *sprite, int animation);
extern void StopTask(void (*task)(void));
extern void Func_80a3c08(void);

void Func_80a3c98(void)
{
    register u8 **global asm("r3");
    register u8 *state asm("r6");
    register int index asm("r5");
    register int offset asm("r1");
    register u8 *countPointer asm("r3");
    register int count asm("r3");
    register int actorTableOffset asm("r2");
    register int actorIndex asm("r3");
    register void *actor asm("r0");
    register int compareIndex asm("r2");

    global = (u8 **)iwram_3001f2c;
    asm volatile("" : "+r"(global));
    offset = 0x219;
    asm volatile("" : "+r"(offset));
    state = *global;
    countPointer = state + offset;
    asm volatile("" : "+r"(countPointer));
    count = *countPointer;
    if (count != 0) {
        asm volatile("mov %0, #0" : "=r"(index));
        do {
            asm volatile("asr %0, %0, #24" : "+r"(index));
            actorTableOffset = 0x8a;
            actorTableOffset <<= 1;
            asm volatile("" : "+r"(actorTableOffset));
            actorIndex = index;
            actorIndex <<= 2;
            actorIndex += actorTableOffset;
            asm volatile("ldr %0, [%1, %2]"
                         : "=r"(actor)
                         : "r"(state), "r"(actorIndex));
            _Sprite_SetAnim(actor, 1);
            offset = 0x219;
            asm volatile("" : "+r"(offset));
            index++;
            countPointer = state + offset;
            asm volatile("" : "+r"(countPointer));
            asm volatile("lsl %0, %0, #24" : "+r"(index));
            count = *countPointer;
            asm volatile("asr %0, %1, #24"
                         : "=r"(compareIndex)
                         : "r"(index));
        } while (compareIndex < count);
    }
    StopTask(Func_80a3c08);
}

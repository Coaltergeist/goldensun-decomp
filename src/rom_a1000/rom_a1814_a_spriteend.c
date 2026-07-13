#include "gba/types.h"

#define SpriteListEnd Func_80a195c

extern u8 iwram_3001f2c[];
extern int _Func_80796c4(u16 *list);
extern void _DeleteSprite(void *sprite);
extern void Func_80a19a0(void);
extern int StopTask(void *task);

/* 一時スプライトを削除してタスクを終了する */
void SpriteListEnd(void)
{
    u16 list[14];
    register u8 **global __asm__("r3");
    register u16 *listArg __asm__("r0");
    register u8 *state __asm__("r5");
    register unsigned int count __asm__("r0");
    register int offset __asm__("r3");
    register void **sprite __asm__("r6");
    register unsigned int left __asm__("r5");
    register void *entry __asm__("r0");

    global = (u8 **)iwram_3001f2c;
    __asm__ volatile ("" : "+r" (global));
    listArg = list;
    __asm__ volatile ("" : "+r" (listArg));
    state = *global;
    __asm__ volatile ("" : "+r" (state));
    count = _Func_80796c4(listArg);
    count <<= 16;
    __asm__ volatile ("" : "+r" (count));
    count >>= 16;
    __asm__ volatile ("" : "+r" (count));

    if (count != 0) {
        offset = 0x8a;
        __asm__ volatile ("" : "+r" (offset));
        offset <<= 1;
        __asm__ volatile ("" : "+r" (offset));
        sprite = (void **)(state + offset);
        __asm__ volatile ("" : "+r" (sprite));
        left = count;
        __asm__ volatile ("" : "+r" (left));
        do {
            entry = *sprite++;
            if (entry != 0)
                _DeleteSprite(entry);
        } while (--left != 0);
    }
    StopTask(Func_80a19a0);
}

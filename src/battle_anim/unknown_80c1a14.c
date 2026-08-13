/* battle_anim/unknown_80c1a14.c */
#include "nonmatching.h"

extern void Func_80c0700(int a, int b);
extern void SetIntrHandler(unsigned int, unsigned int, void *);

void Func_80c1a14(void) {
    Func_80c0700(0, 0);
}

void ClearVCountIntr(void) {
    SetIntrHandler(2, 0, (void *)0);
}

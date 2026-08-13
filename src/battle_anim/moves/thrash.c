/* battle_anim/moves/thrash.c -- consolidated TU. */
#include "nonmatching.h"

extern void _Func_80b82c4(int, int, int, int);
extern void WaitFrames(int);
extern void BaseAnim_Nova(void *, int);

void Anim_Thrash(unsigned char *r5)
{
  int r3;
  r3 = 0x24;
  _Func_80b82c4(*(int *)(r5 + 8), *(short *)(r5 + r3), 0x18, 0xc3333);
  WaitFrames(0x1d);
  *(int *)(r5 + 0x18) = 4;
  BaseAnim_Nova(r5, 2);
}


void Anim_SevereBlow(unsigned char *r5)
{
  int r3;
  r3 = 0x24;
  _Func_80b82c4(*(int *)(r5 + 8), *(short *)(r5 + r3), 0x18, 0x73333);
  WaitFrames(0xc);
  *(int *)(r5 + 0x18) = 3;
  BaseAnim_Nova(r5, 2);
}

extern void BaseAnim_FullScreenSlash(void *context, int subanim);

void Anim_QuickStrike(void *context) {
    BaseAnim_FullScreenSlash(context, 1);
}


void Anim_VorpalSlash(void *context) {
    BaseAnim_FullScreenSlash(context, 2);
}



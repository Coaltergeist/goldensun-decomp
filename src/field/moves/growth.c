#include "nonmatching.h"

extern unsigned char **iwram_3001f30;
extern void Func_8098698(void);
extern void _Actor_SetAnim(void *, int);
extern void _Actor_SetSpriteFlags(void *, int);
extern void WaitFrames(int);
extern void _PlaySound(int);
extern void Func_809748c(void);
void Field_Growth_Target(void)
{
    struct { char p[0x23]; unsigned char f; char q[0x35]; unsigned char g; } *a = (void *) *(unsigned char **)((unsigned char *)iwram_3001f30 + 0x14);
    if (a != 0) {
        Func_8098698();
        _Actor_SetAnim(a, 2);
        a->g = 0;
        _Actor_SetSpriteFlags(a, 0);
        a->f |= 2;
        WaitFrames(10);
        _PlaySound(0x7e);
        WaitFrames(0x28);
        Func_809748c();
    }
}

INCLUDE_ASM("asm/field/moves/growth/Field_Growth.s");

INCLUDE_ASM("asm/field/moves/growth/Func_8098698.s");

/* battle_anim/unleash_intro.c */
#include "nonmatching.h"

INCLUDE_ASM("asm/modules/rom_c9000/battle_anim/unleash_intro/Task_Anim_UnleashIntro.s");
INCLUDE_ASM("asm/modules/rom_c9000/battle_anim/unleash_intro/Anim_UnleashIntro.s");

extern void Task_Anim_UnleashIntro(void);
extern void Task_BlitAnim(void);
extern void Func_80008d4(int arg0, int arg1);
extern void Func_80cd4b4(void);
extern int StopTask(void *task);
extern void gfree(int index);

void EndAnim_UnleashIntro(void) {
    void (*fn)(int, int);

    StopTask(Task_Anim_UnleashIntro);
    StopTask(Task_BlitAnim);
    fn = Func_80008d4;
    fn(0x6004000, 0x80 << 7);
    StopTask(Func_80cd4b4);
    gfree(0x28);
    gfree(0x27);
}

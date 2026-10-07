/* field/moves/mind_read.c */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/moves/mind_read/Field_MindRead.s");

extern unsigned char iwram_3001ea8[];
extern void Func_8097adc(void);
extern void StopTask(void *task);
extern void Task_08097644(void);
extern void *MapActor_GetActor(unsigned short actorID);
extern void Func_808e0b0(void *actor, int flag);
extern void gfree(int index);

void Func_8097608(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001ea8;
    unsigned short id;
    void *actor;

    Func_8097adc();
    StopTask(Task_08097644);
    id = *(unsigned short *)(base + (0xa4 << 2));
    actor = MapActor_GetActor(id);
    Func_808e0b0(actor, 1);
    Func_809748c();
    gfree(0x16);
}

INCLUDE_ASM("asm/field/moves/mind_read/Task_08097644.s");
INCLUDE_ASM("asm/field/moves/mind_read/Func_8097868.s");
INCLUDE_ASM("asm/field/moves/mind_read/Func_80978c4.s");

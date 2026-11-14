/* Remaining diff: sched2 swaps str r6, [sp, #8] (0x20001) and str r5, [sp, #12] (0)
 * on the three OvlFunc_common0_10c calls (all registers, prologue/epilogue, and control
 * flow match identically; matches order under -fno-schedule-insns2).
 */
#include "api.h"
#include "context.h"

extern unsigned char gScript_928__020096a0[];
extern void OvlFunc_928_2008358(void);
extern unsigned char iwram_3001ebc[];

void OvlFunc_928_2008f30(void)
{
    int x, y, z;
    int flags;
    int zero;
    unsigned short *p;

    __CutsceneStart();
    __MapActor_SetBehavior(0x13, (int)gScript_928__020096a0);
    __StartTask(OvlFunc_928_2008358, 0xc8 << 4);
    __MapActor_WaitScript(0x13);
    __PlaySound(0x7c);

    x = 0xa8 << 16;
    y = 0x80 << 12;
    z = 0x9c << 17;
    flags = 0x20001;
    zero = 0;

    OvlFunc_common0_10c(x, y, z, 0, zero, zero, flags, (void *)zero);
    OvlFunc_common0_10c(x, y, z, 0x3333, zero, zero, flags, (void *)zero);
    OvlFunc_common0_10c(x, y, z, -0x3333, zero, zero, flags, (void *)zero);

    __StopTask(OvlFunc_928_2008358);
    p = *(unsigned short **)((unsigned char *)__MapActor_GetActor(0x13) + 0x50);
    *(unsigned short *)((char *)p + 0x1e) = 0x80 << 8;
    __MapActor_SetPos(0x15, x, z);
    __CutsceneWait(0x14);
    __MapActor_Face(0xe, 0x13, 0);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0xa);
    __MessageID(0x17fd);
    if (__GetFlag(0x203)) {
        (*(unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1)))++;
    }
    __ActorMessage(0xe, 0);
    __SetFlag(0x203);
    __MapActor_PlayPendingSound();
    __CutsceneEnd();
}

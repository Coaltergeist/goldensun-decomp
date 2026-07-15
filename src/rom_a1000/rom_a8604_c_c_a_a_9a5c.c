#include "gba/types.h"

extern u8 *iwram_3001f2c;
extern void *_GetUnit(int);
extern void Func_80a9cbc(void *);
extern void Func_80a345c(void);
extern void _Func_801e7c0(int, int, int, int);
extern void Func_80a9aec(int, void *);
extern void WaitFrames(int);
extern void Func_80a3e28(void *, int);
extern void Func_80a9c18(void *);

void Func_80a9a5c(int actor, int unitId, int skipWait)
{
    register int actorId asm("r6") = actor;
    register int skip asm("r10") = skipWait;
    register u8 *state asm("r8") = iwram_3001f2c;
    register int id asm("r5");
    void *unit;

    unit = _GetUnit(unitId);
    Func_80a9cbc(unit);
    Func_80a345c();

    asm volatile("ldr r5, =0xb24" : "=r"(id));
    asm volatile(
        "mov r1, r6\n"
        "mov r0, r5\n"
        "mov r2, #0\n"
        "mov r3, #0\n"
        "bl _Func_801e7c0"
        :
        : "r"(id), "r"(actorId)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    _Func_801e7c0(id + 1, actorId, 0, 0x20);
    _Func_801e7c0(id + 2, actorId, 0, 0x10);
    id += 3;
    _Func_801e7c0(id, actorId, 0, 0x30);

    {
        register void *data asm("r5") = state + 0x1c8;
        Func_80a9aec(actorId, data);
        if (skip == 0) {
            WaitFrames(1);
            Func_80a3e28(data, 1);
            Func_80a9c18(data);
        }
    }
}

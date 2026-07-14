#include "math.h"

extern unsigned char **GetBattleActor(int actor);
extern unsigned int Func_80b7f70(unsigned int actor, unsigned int index);
extern int Func_80b7ed8(void);
extern int PhysMove(void *src, void *dst);
extern u8 *_GetUnit(int unit);
extern int Func_80c23c0(unsigned int enemy);

static inline fx32 call_fxmul(fx32 (*fxmul)(fx32, fx32), fx32 a, fx32 b) {
    register fx32 r0 asm("r0") = a;
    register fx32 r1 asm("r1") = b;

    asm volatile(
        ".align 2, 0\n"
        "mov r12, pc\n"
        "bx %0"
        :
        : "r"(fxmul), "l"(r0), "l"(r1)
        : "r0", "r1", "r2", "r12"
    );
    return r0;
}

int Func_80b84c0(unsigned int unit, int *dest)
{
    register unsigned int call_unit asm("r0") = unit;
    register int *dest_arg asm("r1") = dest;
    register unsigned int saved_unit asm("r8");
    register int *saved_dest asm("r7");
    register unsigned char *actor asm("r5");
    register unsigned char *data asm("r6");
    fx32 (*fxmul)(fx32, fx32);
    int cb;
    int result;

    saved_dest = dest_arg;
    saved_unit = call_unit;
    asm volatile("" : "+r"(call_unit), "+r"(saved_dest), "+r"(saved_unit));
    actor = *GetBattleActor(call_unit);
    data = (unsigned char *)Func_80b7f70((unsigned int)actor, 0);
    actor = actor + 8;
    asm volatile("" : "+r"(actor), "+r"(data));
    Func_80b7ed8();
    result = PhysMove(actor, saved_dest);
    fxmul = Func_8000888;
    cb = call_fxmul(fxmul, result, *(int *)(data + 0x18));
    {
        unsigned int enemy = _GetUnit(saved_unit)[0x128];
        int special = Func_80c23c0(enemy);

        if (special != 0) {
            result = call_fxmul(fxmul, cb, 0x18);
        } else {
            result = call_fxmul(fxmul, cb, 0x30);
        }
    }
    saved_dest[1] -= result;
    return 0;
}

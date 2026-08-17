/* field/field_move.c -- general-purpose field-move dispatcher (split from weather.c). */
#include "nonmatching.h"

extern void FieldMove_NoTarget(void);
extern void FieldMove_Target(void);
extern void Func_8096ab0(void);
extern void Func_8096af0(void);

void FieldMove(int param_1)
{
	if (param_1 == 0)
		FieldMove_NoTarget();
	else if (param_1 == 1)
		FieldMove_Target();
	else if (param_1 == 2)
		Func_8096ab0();
	else if (param_1 == 3)
		Func_8096af0();
}

INCLUDE_ASM("asm/field/field_move/rom_944ec_a_c_c_a_a.s");

extern void CutsceneStart(void);
extern void MessageID(unsigned int stringID);
extern void ActorMessage(unsigned int actor, unsigned int arg1);
extern void CutsceneEnd(void);
extern int _call_via_r3(void);
extern int _GetFlag(unsigned int flag);
extern void _Func_801776c(unsigned int, unsigned int);

int Func_8096b28(int *arg0, int arg1, int arg2)
{
    int (*f)(int, int);

    if (arg0 != 0) {
        if (arg0[2] != 0) {
            if (arg0[2] < 0x10000) {
                CutsceneStart();
                MessageID(arg0[2]);
                ActorMessage(arg2, 0);
                CutsceneEnd();
            } else {
                f = (int (*)(int, int)) arg0[2];
                f(arg1, arg2);
            }
        }
        if (_GetFlag(0x142)) {
            CutsceneStart();
            _Func_801776c(0x927, 1);
            CutsceneEnd();
        }
    }
    return 0;
}

INCLUDE_ASM("asm/field/field_move/rom_944ec_a_c_c_a_c.s");

extern int vec3_translate();
extern int _Actor_TravelTo();

void Func_8096bec(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int v[3];

    if (arg0 != 0) {
        v[0] = *(unsigned int *)((char *)arg0 + 8);
        v[1] = *(unsigned int *)((char *)arg0 + 0xc);
        v[2] = *(unsigned int *)((char *)arg0 + 0x10);
        vec3_translate(arg1, arg2, v);
        _Actor_TravelTo(arg0, v[0], v[1], v[2]);
    }
}


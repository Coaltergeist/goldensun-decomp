#include "unit.h"

extern unsigned int iwram_3001f2c;
extern int Func_80a3ddc(struct Unit *unit, unsigned short *list, int mode);
extern void Func_80a3e28(unsigned short *list, int mode);
extern void Func_80a1cb0(int param_2);
extern int Func_80a3d6c(int unitId);
extern void _Func_8016498(unsigned int box);
extern void _Func_801e7c0(unsigned int text_id, unsigned int box, int x, int y);

void Func_80a3e88(int unitId, int param_2)
{
    unsigned int global;
    struct Unit *unit;
    unsigned short *list;
    unsigned char *flag;
    int result;

    global = iwram_3001f2c;
    unit = _GetUnit(unitId);
    list = (unsigned short *)(global + (0xe4 << 1));
    result = Func_80a3ddc(unit, list, 0);
    flag = (unsigned char *)(global + (0x86 << 2));
    *flag = result;
    _Func_8016498(*(unsigned int *)(global + 0x20));
    Func_80a1cb0(param_2);
    Func_80a3e28(list, 0);
    if (Func_80a3d6c(unitId) == 0) {
        _Func_801e7c0(0xad7, *(unsigned int *)(global + 0x20), 8, 0x18);
    }
}

#include "unit.h"

extern unsigned int iwram_3001f2c;
extern int Func_80a68ec(struct Unit *unit, unsigned short *list, int mode);
extern void Func_80a68a8(unsigned short *used);
extern void Func_80a1bdc(int a, int b, int c);
extern void _Func_8016498(unsigned int box);
extern void _Func_801e7c0(unsigned int text_id, unsigned int box, int x, int y);

void Func_80a6384(int unitId)
{
    unsigned int global;
    struct Unit *unit;
    unsigned short *list;
    unsigned char *flag;
    int result;

    global = iwram_3001f2c;
    unit = _GetUnit(unitId);
    list = (unsigned short *)(global + (0xe4 << 1));
    result = Func_80a68ec(unit, list, 2);
    flag = (unsigned char *)(global + (0x86 << 2));
    *flag = result;
    _Func_8016498(*(unsigned int *)(global + 0x20));
    Func_80a1bdc(0x6c, 0x20, 8);
    Func_80a68a8(list);
    if (*flag == 0) {
        _Func_801e7c0(0xaf2, *(unsigned int *)(global + 0x20), 0, 0x18);
    }
}

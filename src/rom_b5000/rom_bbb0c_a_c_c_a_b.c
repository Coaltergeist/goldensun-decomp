typedef unsigned char u8;

extern u8 *_GetUnit(int unitId);

int Func_80bf54c(int unitId)
{
    u8 *unit = _GetUnit(unitId);
    u8 *timer = unit + 0x13f;

    if (*timer != 0) {
        (*timer)--;
        if (*timer == 0)
            return 1;
    }

    return 0;
}

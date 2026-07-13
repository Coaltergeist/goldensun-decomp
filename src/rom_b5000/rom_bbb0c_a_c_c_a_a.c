typedef unsigned char u8;

extern u8 *_GetUnit(int unitId);

int Func_80bf524(int unitId)
{
    u8 *unit = _GetUnit(unitId);
    u8 *timer = unit + 0x13e;

    if (*timer != 0) {
        (*timer)--;
        if (*timer == 0)
            return 1;
    }

    return 0;
}

asm(".size Func_80bf524, 40");

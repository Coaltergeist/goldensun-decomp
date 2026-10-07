extern int _divsi3_RAM(int, int);
extern unsigned char iwram_3001ebc[];

void OvlFunc_933_2008cd0(void)
{
    GlobalState *p = &gState;
    char *base = *(char **)iwram_3001ebc;
    int ratio = _divsi3_RAM(*(short *)((char *)p + 0x232) * 100, *(short *)((char *)p + 0x22c));

    if (API_GetFlag(0x201)) {
        return;
    }

    if (API_GetFlag(0x302) && ratio <= 0x4a) {
        API_ClearFlag(0x302);
        API_ClearFlag(0x303);
        API_ClearFlag(0x304);
        API_ClearFlag(0x305);
    }
    if (API_GetFlag(0x301) && ratio <= 0x31) {
        API_ClearFlag(0x301);
        API_ClearFlag(0x303);
        API_ClearFlag(0x304);
        API_ClearFlag(0x305);
    }
    if (API_GetFlag(0x300) && ratio <= 0x18) {
        API_ClearFlag(0x300);
        API_ClearFlag(0x303);
        API_ClearFlag(0x304);
        API_ClearFlag(0x305);
    }

    if (!API_GetFlag(0x300) && ratio > 0x18) {
        API_SetFlag(0x300);
        *(short *)(base + 0x182) = 1;
    }
    if (!API_GetFlag(0x301) && ratio > 0x31) {
        API_SetFlag(0x301);
        *(short *)(base + 0x182) = 2;
    }
    if (!API_GetFlag(0x302) && ratio > 0x4a) {
        API_SetFlag(0x302);
        *(short *)(base + 0x182) = 3;
    }
}

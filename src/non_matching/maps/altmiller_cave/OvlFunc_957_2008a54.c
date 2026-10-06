extern unsigned char ewram_2001004[];

void OvlFunc_957_2008a54(void)
{
    signed char level = *(signed char *)ewram_2001004;

    REG_BLDCNT = 0x3f42;
    if (level == 0)
        REG_BLDALPHA = 0x1000;
    else if (level == 1)
        REG_BLDALPHA = 0xe00;
    else if (level == 2)
        REG_BLDALPHA = 0xc00;
    else if (level == 3)
        REG_BLDALPHA = 0xa00;
    else if (level == 4)
        REG_BLDALPHA = 0x800;
    else
        REG_BLDALPHA = 0x600;
}

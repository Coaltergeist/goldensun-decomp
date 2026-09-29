extern int OvlFunc_common0_70(int, int, int, int);

extern void OvlFunc_934_2009770(void);

void OvlFunc_934_2009984(void)
{
    unsigned int off;

    off = 0xe0;
    off <<= 1;

    if (*(short *)((char *)&gState + off) == (int)Lconst_5e) {
        off = 0xe1;
        off <<= 1;
        switch (*(short *)((char *)&gState + off)) {
        case 1:
        case 2:
        case 3:
        case 4:
            __Func_8092b08(15, 3);
            __Func_8092b08(13, 3);
            OvlFunc_common0_70(0xf0 << 15, 0, 0xe8 << 16, 0xdf);
            break;
        case 5:
        case 6:
        case 7:
            if (!__GetFlag(0x70) && __GetFlag(0x302)) {
                __SetFlag(0x80 << 2);
                if (*(short *)((char *)&gState + off) == 5) {
                    __SetFlag(off + 63);
                }
                __WaitFrames(1);
                if (!__GetFlag(0x109)) {
                    __MapActor_SetPos(8, 198 << 18, 140 << 17);
                    *(int *)(__MapActor_GetActor(8) + 0x6c) = (int)OvlFunc_934_2008cf8;
                }
            }
            break;
        case 8:
        case 9:
        case 10:
            OvlFunc_common0_70(0x2820000, 0, 0x8a << 18, 20);
            __Func_8010704(23, 34, 13, 3, 0, 34);
            OvlFunc_934_2009770();
            if (__GetFlag(0x80 << 2)) {
                __Func_8010704(23, 41, 1, 1, 23, 39);
            }
            if (__GetFlag(0x201)) {
                __Func_8010704(31, 39, 2, 1, 27, 41);
            }
            break;
        }
    } else if (*(short *)((char *)&gState + off) == (int)Lconst_5f) {
        off = 0xe1;
        off <<= 1;
        {
            short val = *(short *)((char *)&gState + off);
            if (val > 3 || val < 1)
                return;
        }
        if (__GetFlag(off + 64)) {
            OvlFunc_934_2008528(0, 12, 16, 1, 4, 0);
            OvlFunc_934_2008528(0, 13, 16, 1, 4, 0);
        } else {
            OvlFunc_934_2008ba4(9);
        }
        if (__GetFlag(0x203)) {
            OvlFunc_934_2008528(2, 16, 16, 1, 4, 0);
            OvlFunc_934_2008528(0, 16, 16, 1, 4, 0);
        } else {
            OvlFunc_934_2008ba4(10);
        }
        if (__GetFlag(0x205)) {
            OvlFunc_934_2008528(0, 13, 19, 4, 2, 0);
        } else if (__GetFlag(0x81 << 2)) {
            OvlFunc_934_2008528(0, 13, 15, 4, 2, 0);
            __Func_8010704(14, 17, 2, 1, 14, 16);
            __Func_8010704(14, 13, 1, 1, 14, 15);
        } else {
            OvlFunc_934_2008ba4(11);
            __Func_8092b08(11, 3);
        }
    }
}

void OvlFunc_924_20098f8(void)
{
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern unsigned int __Random(void);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
    extern int __StopTask(void (*)(void));

    struct {
        int unk0;
        int unk4;
        int unk8;
        int unkc;
        int unk10;
        int unk14;
        int unk18;
        int unk1c;
        int unk20;
        int unk24;
    } data;
    unsigned int i;
    unsigned int j;
    int zOff;

    __CopyMapTiles(0x4e, 0x3a, 0x6e, 0x24, 1, 1);
    data.unk4 = 5;
    data.unk8 = 0x8000;
    data.unkc = 0x8000;
    i = 0;
    do {
        j = 1;
        zOff = -0x20000;
        do {
            if ((j & 1) != 0) {
                OvlFunc_common0_10c(zOff - (i << 19) + (0xb6 << 18), 0,
                                    (0x248 - ((__Random() * 5) >> 16)) << 16,
                                    -0x4000, 0, 0, 0x90000, &data);
                __CutsceneWait(1);
            }
            j++;
            zOff -= 0x20000;
        } while (j <= 7);
        __CopyMapTiles(0x6f, 0x23, 0x6d - i, 0x24, 1, 1);
        i++;
    } while (i <= 2);
    __StopTask(OvlFunc_924_2009790);
}

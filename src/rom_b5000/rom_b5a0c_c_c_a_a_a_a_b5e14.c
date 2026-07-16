typedef unsigned char u8;
typedef unsigned short u16;

extern void *Func_8004970(int);
extern u8 *_GetUnit(int);
extern int Func_8006408(void *);
extern void Func_8006488(void);
extern void WaitFrames(int);
extern void _DecompressString2(int, u16 *);
extern void free(void *);
extern void *_Func_8077330(int);

int Func_80b5e14(void)
{
    void *work;
    int present;
    int unitIndex;
    u16 text[24];

    work = Func_8004970(0x154);
    present = 0;
    for (unitIndex = 0; unitIndex < 3; unitIndex++) {
        u8 *unit = _GetUnit(unitIndex + 0x80);
        int length;
        int i;

        if (Func_8006408(unit) == -1)
            break;
        Func_8006488();
        if (unit[0x12a] != 0)
            present++;
        WaitFrames(2);
        _DecompressString2(0x80c, text);

        i = 0;
        if (text[i] != 0) {
            u16 *scan = text;

            do {
                i++;
                if (i > 4)
                    break;
                scan++;
            } while (*scan != 0);
        }
        length = i;
        for (i = 0xe; i >= length; i--)
            unit[i] = unit[i - length];
        for (i = 0; i < length; i++)
            unit[i] = (u8)text[i];
        unit[0xe] = 0;
    }
    free(work);

    work = Func_8004970(0x140);
    if (Func_8006408(_Func_8077330(1)) != -1) {
        Func_8006488();
        WaitFrames(2);
    }
    free(work);
    return present;
}

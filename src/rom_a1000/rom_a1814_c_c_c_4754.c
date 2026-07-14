extern unsigned char iwram_3001f2c[];
extern unsigned char *_GetItemInfo(unsigned int arg);
extern unsigned int Random(void);
extern int _BreakItem(int unit, int item);
extern void _PlaySound(int sound);
extern int Func_80a1d08(int a0, int a1, int a2);

void Func_80a4754(void)
{
    unsigned char *base;
    unsigned int itemId;
    unsigned char *info;

    base = *(unsigned char **)iwram_3001f2c;
    itemId = *(unsigned short *)(base + 0x178) & 0x1ff;
    info = _GetItemInfo(itemId);
    if (info[0xc] == 2 && Random() < 0x2000) {
        _BreakItem(base[0x21a], *(unsigned short *)(base + 0x174));
        _PlaySound(0x8a);
        Func_80a1d08(0xb86, 0, -1);
    }
}

#include "dma.h"

extern unsigned char iwram_3001f2c[];
extern void _Func_8016498(unsigned int box);
extern unsigned int _CreateUIBox(int x, int y, int arg2, int arg3, int flags);

void Func_80a1090(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001f2c;

    DMA3_CLEAR(base, 0x29c * 4);
    base[0x1c] = 0xff;
    base[0x1e] = 1;
    base[0x1f] = 1;
    base[0x112] = 1;
    base[0x113] = 1;
}

int Func_80a10d0(unsigned int *box, int x, int y, int arg2, int arg3, int flags)
{
    if (*box != 0) {
        if (flags & 0x100)
            return 0;
        _Func_8016498(*box);
        return 0;
    }
    *box = _CreateUIBox(x, y, arg2, arg3, flags & 0xff);
    return 1;
}

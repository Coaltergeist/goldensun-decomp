typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void _Func_8019000(void *object, u32 tile, int x, int y, int mode);
extern int __divsi3(int value, int divisor);
extern int __modsi3(int value, int divisor);

void Func_80a21b0(void *a0, int a1, int a2, int a3, int a4)
{
    int q;
    int i;
    u32 tile;

    tile = 0x31;
    q = __divsi3(a1, a2);
    if (__modsi3(a1, a2) != 0)
        q++;
    a4 = a4 - q;
    if (q > 1)
    {
        _Func_8019000(a0, 0xf128, a4 - 1, -1, 0);
        for (i = 0; i < q; i++)
        {
            if (i == a3)
                _Func_8019000(a0, tile, a4, -1, 2);
            else
                _Func_8019000(a0, tile, a4, -1, 3);
            tile++;
            a4++;
        }
        _Func_8019000(a0, 0xf129, a4, -1, 0);
    }
}

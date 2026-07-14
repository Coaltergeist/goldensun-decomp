typedef unsigned int u32;

extern void _Func_8019000(void *object, u32 tile, int x, int y, int zero);

void Func_80a8cc0(void *object, int x, int y, int tile_index)
{
    u32 tile = 0xf281 + tile_index * 2;

    _Func_8019000(object, tile | 0x400, x, y, 0);
    _Func_8019000(object, 0xf280 + tile_index * 2, x + 1, y, 0);
    _Func_8019000(object, tile, x + 2, y, 0);
}

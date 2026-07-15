extern void Func_8019000(int target, int tile, int x, int y, int flags);
extern int Func_8019000_result(int target, int tile, int x, int y, int flags) asm("Func_8019000");

int Func_80218dc(int target, int x, int y, int frame)
{
    int tile = frame * 2 + 0xf315;

    Func_8019000(target, tile | 0x400, x, y, 0);
    Func_8019000(target, frame * 2 + 0xf314, x + 1, y, 0);
    return Func_8019000_result(target, tile, x + 2, y, 0);
}

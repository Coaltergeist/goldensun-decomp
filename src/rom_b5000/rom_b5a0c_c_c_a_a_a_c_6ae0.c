typedef unsigned char u8;
typedef unsigned short u16;

extern int _GetFlag(int flag);
extern u8 *_GetUnit(int unit);

int Func_80b6ae0(u16 *out)
{
    register u16 *dest asm("r6") = out;
    int count = 0;
    int limit = 6;
    int unit;
    int result = 0;

    if (dest != 0) {
        if (_GetFlag(0x16c) != 0)
            limit = 3;

        for (unit = 0x80; unit < limit + 0x80; unit++) {
            if (_GetUnit(unit)[0x12a] != 0) {
                *dest++ = unit;
                count++;
            }
        }
        *dest = 0xff;
        result = count;
    }
    return result;
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;

extern int _GetFlag(int flag);
extern u8 *_GetUnit(int unit);
extern int Func_80b6a60(u16 *output);

int Func_80b6b40(unsigned int flags, u16 *out)
{
    register unsigned int flagsReg asm("r10") = flags;
    register u16 *outPtr asm("r6") = out;
    register int count asm("r8") = 0;
    register int limit asm("r9") = 6;
    u16 local[8];

    if (_GetFlag(0x16c) != 0)
        limit = 3;

    if (flagsReg & 1) {
        u16 *p = local;
        int n;
        n = Func_80b6a60(p);
        if (count < n) {
            u16 *cursor = p;
            register int remain asm("r5") = n;
            int id;
            u8 *u;
            do {
                id = *cursor;
                cursor = cursor + 1;
                u = _GetUnit(id);
                if (*(s16 *)(u + 0x38) > 0) {
                    if (outPtr != 0) {
                        *outPtr = id;
                        outPtr = outPtr + 1;
                    }
                    count = count + 1;
                }
                remain = remain - 1;
            } while (remain != 0);
        }
    }

    if (flagsReg & 2) {
        int unit = 0x80;
        int end = limit + 0x80;
        if (unit < end) {
            do {
                u8 *u = _GetUnit(unit);
                if (u[0x12a] != 0 && *(s16 *)(u + 0x38) > 0) {
                    if (outPtr != 0) {
                        *outPtr = unit;
                        outPtr = outPtr + 1;
                    }
                    count = count + 1;
                }
                unit = unit + 1;
            } while (unit < end);
        }
    }

    if (outPtr != 0)
        *outPtr = 0xff;

    return count;
}

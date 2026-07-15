typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *GetUnit(s32 unit);
extern void Func_8078bf0(s32 unit);

s32 GiveInnateMove(s32 unit_param, u32 move_param)
{
    register s32 unit asm("r7");
    register u32 move asm("r6");
    register u8 *u asm("r5");
    register s32 result asm("r4");
    register s32 i asm("r1");
    s32 off;
    register u32 mask asm("ip");
    register u32 t asm("r3");
    register u32 v asm("r2");

    unit = unit_param;
    move = move_param;
    u = GetUnit(unit);
    off = 0x58;
    t = 0x3fff;
    mask = t;
    move = move & t;

    v = mask;
    v = v & *(u16 *)(off + (s32)u);
    result = -1;
    i = 0;
    if (v == move) {
        *(u16 *)(off + (s32)u) = v;
        result = 0;
    } else {
        for (;;) {
            i = i + 1;
            off = off + 4;
            if (i > 0x1e) {
                goto after1;
            }
            v = mask;
            v = v & *(u16 *)(off + (s32)u);
            if (v == move) {
                break;
            }
        }
        *(u16 *)(off + (s32)u) = v;
        result = i;
    }
after1:
    if (result < 0) {
        v = 0x58;
        i = 0;
        if (*(u16 *)(v + u) == 0) {
            *(u16 *)(v + u) = move;
            result = 0;
        } else {
            for (;;) {
                i = i + 1;
                if (i > 0x1e) {
                    goto after2;
                }
                t = i * 4;
                v = t + 0x58;
                if (*(u16 *)(v + u) == 0) {
                    break;
                }
            }
            *(u16 *)(v + u) = move;
            result = i;
        }
after2:
        if (result < 0) {
            return -1;
        }
    }

    Func_8078bf0(unit);

    i = 0;
    t = 0x58;
    if (*(u16 *)(t + u) != move) {
        off = (s32)(u + 0x58);
        for (;;) {
            i = i + 1;
            if (i > 0x1f) {
                break;
            }
            off = off + 4;
            if (*(u16 *)off == move) {
                break;
            }
        }
    }
    return i;
}

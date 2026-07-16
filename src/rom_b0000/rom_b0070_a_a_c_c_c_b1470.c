typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u8 pad[0xd8];
    u16 items[15];
} Unit;

typedef struct {
    u8 pad[0xf];
    u8 flags;
} TextObject;

extern Unit *_GetUnit(s32);
extern void _Func_8016478(s32);
extern s32 _CheckItem(s32, s32);
extern void _Func_8019908(s32, s32);
extern void _Func_801e7c0(s32, s32, s32, s32);
extern TextObject *_Func_801eb90(s32, s32, s32, s32, s32);

void Func_80b1470(s32 window, s32 unitId, s32 itemId)
{
    Unit *unit = _GetUnit(unitId);
    s32 x = 8;
    s32 y = 8;
    s32 i;

    if (window != 0) {
        s32 slot;
        _Func_8016478(window);
        slot = _CheckItem(unitId, itemId);
        if (slot != -1) {
            register s32 label asm("r0");
            _Func_8019908((unit->items[slot] >> 11) + 1, 5);
            asm volatile("ldr %0, =0xc90" : "=r"(label));
            _Func_801e7c0(label, window, 0, 0);
        } else {
            register s32 label asm("r0");
            asm volatile("ldr %0, =0xc8f" : "=r"(label));
            _Func_801e7c0(label, window, 0, 0);
        }
        i = 0;
        if (unit->items[i] != 0) {
            TextObject *obj;
        loop:
            obj = _Func_801eb90(unit->items[i], 0x1b, window, x, y);
            obj->flags = 0xfc;
            x += 0x10;
            if (i == 4) {
                x = 8;
                y += 0x10;
            }
            if (i == 9) {
                x = 8;
                y += 0x10;
            }
            i++;
            if (i <= 14 && unit->items[i] != 0) {
                goto loop;
            }
        }
    }
}

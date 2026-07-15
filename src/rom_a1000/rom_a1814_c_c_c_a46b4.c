typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *_GetItemInfo(u32 itemId);
extern u8 *_GetMoveInfo(u32 moveId);
extern u32 _Func_808e990(u16 itemId);
extern s32 _CanEquipItem(s32 a, s32 b);

s32 Func_80a46b4(s32 param_1, u32 param_2)
{
    register u32 itemId asm("r6");
    u8 *item;
    u8 *move;
    s32 result;

    itemId = param_2 & 0x1ff;
    item = _GetItemInfo(itemId);
    result = -1;
    if (_Func_808e990(itemId) != 0) {
        return 0;
    }
    move = _GetMoveInfo(*(u16 *)(item + 0x28) & 0x3fff);
    if (*(u16 *)(item + 0x28) != 0) {
        if (item[2] == 0 || (item[0xc] != 3 && _CanEquipItem(param_1, itemId) != 0)) {
            result = 1;
        }
        if (result == 1) {
            asm volatile(
                "mov r3, %1\n\t"
                "ldrb r2, [r3, #1]\n\t"
                "mov r3, #0x40\n\t"
                "and r3, r2\n\t"
                "cmp r3, #0\n\t"
                "beq 1f\n\t"
                "mov r3, %1\n\t"
                "ldrb r2, [r3, #8]\n\t"
                "mov r3, #0xff\n\t"
                "eor r2, r3\n\t"
                "neg r3, r2\n\t"
                "orr r3, r2\n\t"
                "lsr %0, r3, #31\n\t"
                "mov r3, #2\n\t"
                "b 2f\n\t"
                "1:\n\t"
                "mov r3, #0x80\n\t"
                "and r3, r2\n\t"
                "neg r2, r3\n\t"
                "orr r2, r3\n\t"
                "lsr r2, r2, #31\n\t"
                "mov %0, r2\n\t"
                "mov r3, #0\n\t"
                "2:\n\t"
                "sub %0, r3, %0"
                : "+r"(result)
                : "r"(move)
                : "r2", "r3");
        }
    }
    return result;
}

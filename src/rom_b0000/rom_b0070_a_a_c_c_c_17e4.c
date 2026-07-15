typedef unsigned char u8;
typedef signed short s16;

extern u8 *_GetItemInfo(int itemId);
extern int _GetEquippedItem(int unitId, int itemType);
extern void _PlaySound(int soundId);
extern int _GiveItemTo(int unitId, int itemId);
extern void _AddCoins(int amount);
extern void _AddCoinsSpent(int amount);
extern void Func_80b10cc(void);
extern void Func_80b0574(int messageId);
extern int Func_80b1868(int unitId, int slot);
extern void Func_80b196c(int unitId, int slot);

void Func_80b17e4(int unitId, int itemId, int quantity)
{
    u8 *info = _GetItemInfo(itemId);
    int slot = 0;
    int equipped = _GetEquippedItem(unitId, info[2]);

    _PlaySound(0x65);
    if (slot < quantity) {
        do {
            slot = _GiveItemTo(unitId, itemId);
            _AddCoins(-*(s16 *)info);
            quantity--;
            _AddCoinsSpent(*(s16 *)info);
            Func_80b10cc();
        } while (quantity != 0);
    }

    Func_80b0574(0xca1);
    if (Func_80b1868(unitId, slot))
        Func_80b196c(unitId, equipped);
}

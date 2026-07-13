typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *GetUnit(int unitId);
extern const u8 *GetItemInfo(unsigned int itemId);

int Func_8078af8(int unitId, unsigned int itemId)
{
    u8 *unit;
    int count;
    int index;
    unsigned int offset;

    unit = GetUnit(unitId);
    count = 0;
    itemId &= 0x1ff;
    index = 0;
    offset = 0xd8;

    do {
        if ((*(u16 *)(offset + (unsigned int)unit) & 0x1ff) == itemId) {
            if ((GetItemInfo(itemId)[3] & 0x10) != 0) {
                count = (*(u16 *)(offset + (unsigned int)unit) >> 11) + 1;
                break;
            }
            count++;
        }
        index++;
        offset += 2;
    } while (index <= 0xe);

    return count;
}

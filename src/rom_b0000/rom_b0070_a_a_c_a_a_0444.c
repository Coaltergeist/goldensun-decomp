#include "unit.h"

typedef struct {
    unsigned char _bytes[704];
} GlobalState;

extern GlobalState gState;

extern int _GiveItemTo(int unitId, int itemId);
extern void _EquipItem(int unitId, int inventorySlot);
extern void Func_80b0278(int actorId, int target);

int Debug_TestEquipAndStatus(void)
{
    register unsigned char *base asm("r3");
    register unsigned int offset asm("r2");
    int slot;

    base = (unsigned char *)&gState;
    offset = 0x30d40;
    *(int *)(base + 0x10) = offset;
    offset = 0x8e;
    offset <<= 1;
    base += offset;
    asm volatile("" : "+r"(offset));
    offset = 0x1c;
    *base = offset;

    slot = _GiveItemTo(1, 0x48d);
    _EquipItem(1, slot);

    slot = _GiveItemTo(0, 0x40b);
    _EquipItem(0, slot);

    _GiveItemTo(2, 0xe7);

    _GetUnit(3)->unk12B[6] = 1;
    _GetUnit(5)->unk12B[6] = 1;
    _GetUnit(2)->unk140[0] = 1;

    Func_80b0278(1, 0x1e);

    return 0;
}

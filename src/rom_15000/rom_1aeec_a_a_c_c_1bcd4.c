extern int AllocSpriteSlot(void);
extern void LoadOldUIIcon(int id, int variant, int *slot, int *metadata, int reuse);
extern void LoadMoveIcon(int id, int variant, int *slot, int *metadata, int reuse);
extern void LoadInventoryIcon(int id, int palette, int slot);
extern void LoadStatusIcon(int id, int palette, int slot);
extern void LoadUIBanner(int id, int palette, int slot);

int Func_801bcd4(unsigned int kind, int id, int slot, int variant)
{
    int metadata;
    int original = slot;

    if (slot == -1) {
        slot = AllocSpriteSlot();
        if (slot == 0x60)
            return original;
    }

    switch (kind) {
    case 1:
    case 6:
        LoadOldUIIcon(id, variant, &slot, &metadata, 1);
        break;
    case 2:
        LoadInventoryIcon(id, 0x3a, slot);
        break;
    case 7:
        LoadInventoryIcon(id, 0x2a, slot);
        break;
    case 4:
        LoadMoveIcon(id, variant, &slot, &metadata, 1);
        break;
    case 8:
        LoadStatusIcon(id, 0, slot);
        break;
    case 9:
        LoadUIBanner(id, 0, slot);
        break;
    }
    return slot;
}

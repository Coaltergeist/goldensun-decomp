extern void LoadOldUIIcon(int, int, int *, int *, int);
extern int AllocSpriteSlot(void);
extern void LoadInventoryIcon(int, int);
extern void LoadUIBanner(int, int);
extern void LoadMoveIcon(int, int, int *, int *, int);

int UploadIcon(int kind, int iconId)
{
    register int id asm("r5") = iconId;
    int unused;
    int result = -1;

    switch ((unsigned)(kind - 1)) {
    case 0:
    case 5:
        LoadOldUIIcon(id, 0, &result, &unused, 0);
        break;
    case 1:
        {
            register int slot asm("r2") = AllocSpriteSlot();
            result = slot;
            if (slot == 0x60)
                return -1;
        }
        LoadInventoryIcon(id, 0x1a);
        break;
    case 8:
        {
            register int slot asm("r2") = AllocSpriteSlot();
            result = slot;
            if (slot == 0x60)
                return -1;
        }
        LoadUIBanner(id, 0);
        break;
    case 3:
        LoadMoveIcon(id, 1, &result, &unused, 0);
        break;
    default:
        break;
    }
    return result;
}

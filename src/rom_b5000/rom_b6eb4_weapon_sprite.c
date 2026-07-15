typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *_GetUnit(int unitId);
extern int _GetEquippedItem(int unitId, int kind);
extern int GetWeaponType(int itemId);

struct Unit {
    u8 pad[0xd8];
    u16 items[1];
};

extern const u16 WeaponSprites0[];
extern const u16 WeaponSprites1[];
extern const u16 WeaponSprites2[];
extern const u16 WeaponSprites3[];
extern const u16 WeaponSprites5[];

int GetWeaponSpriteID(int unitId)
{
    struct Unit *unit = (struct Unit *)_GetUnit(unitId);
    int slot = _GetEquippedItem(unitId, 1);
    register int result __asm__("r5") = 0;

    if (slot >= 0) {
        int weaponType = GetWeaponType(unit->items[slot] & 0x1ff);
        const u16 *sprites;

        switch (((u8 *)unit)[0x128]) {
        case 0: sprites = WeaponSprites0; break;
        case 1: sprites = WeaponSprites1; break;
        case 2: sprites = WeaponSprites2; break;
        case 3: sprites = WeaponSprites3; break;
        case 5: sprites = WeaponSprites5; break;
        default: goto out;
        }
        {
            register const u16 *table __asm__("r2") = sprites;
            register int offset __asm__("r3") = weaponType << 1;
            __asm__ volatile ("ldrh %0, [%1, %2]"
                              : "=r" (result)
                              : "r" (table), "r" (offset));
        }
    }
out:
    return result;
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *iwram_3001e60;
extern u8 *_GetSpriteInfo(int spriteId);

void Func_8012d70(unsigned int group, int frame)
{
    u8 *base = iwram_3001e60;
    int index = 0;
    int slotOffset = ((group & 3) << 2) + 0x28;
    int zero = 0;

    do {
        u8 *sprite = *(u8 **)(base + slotOffset);
        if (*(int *)(sprite + 0xc) != 0) {
            u8 *info = _GetSpriteInfo(*(s16 *)sprite);
            if (frame < info[5]) {
                sprite[4] = info[4];
                *(int *)(sprite + 0x10) =
                    *(int *)(*(u8 **)(sprite + 0xc) + frame * 4);
                *(u16 *)(sprite + 2) = index << 4;
                sprite[0x15] = 0x10;
                sprite[0x14] = zero;
                sprite[0x17] = zero;
                sprite[0x16] = 0xff;
            }
            base[0x23] = info[7];
            *(u16 *)(base + 0x1e) = zero;
        }
        index++;
        base += 0x38;
    } while (index <= 9);
}

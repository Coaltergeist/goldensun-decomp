typedef unsigned char u8;
typedef unsigned int u32;

extern void DeleteSpriteLayer(void *layer);

void Sprite_DeleteLayer(u8 *sprite, void *layer)
{
    unsigned int index;
    void **entry;
    unsigned int count;
    unsigned int offset;
    register u32 work asm("r2");
    register u32 address asm("r3");

    if (sprite != 0 && layer != 0) {
        DeleteSpriteLayer(layer);
        index = 0;
        if (layer != *(void **)(sprite + 0x28)) {
            work = (u32)(sprite + 0x28);
            do {
                index++;
                if (index > 3)
                    break;
                work += 4;
            } while (layer != *(void **)work);
        }

        if (index != 4) {
            offset = index << 2;
            work = 0;
            offset += 0x28;
            *(u32 *)(sprite + offset) = work;
            work = index + 1;
            count = 0;
            if (work <= 3) {
                address = work << 2;
                address += (u32)sprite;
                asm volatile("" : "+r" (address));
                entry = (void **)address;
                entry = (void **)((u8 *)entry + 0x28);
                do {
                    if (*entry++ != 0)
                        count++;
                    work++;
                } while (work <= 3);
            }
            if (count == 0)
                sprite[0x27] = index;
        }
    }
}

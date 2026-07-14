typedef unsigned char u8;
typedef unsigned int u32;

extern u32 iwram_3001e40;
extern const u8 direction_table[] asm(".L48bc");

void OvlFunc_882_200a09c(u8 *actor, int direction)
{
    u8 *objects;
    int value;
    unsigned int count;
    u8 **entry;

    if ((actor[0x54] & 0xf) != 1)
        return;
    objects = *(u8 **)(actor + 0x50);
    value = direction - 1;
    if (direction == 0)
        value = direction_table[(iwram_3001e40 >> 1) & 1];

    count = objects[0x27];
    if (count != 0) {
        unsigned int remaining;
        entry = (u8 **)(objects + 0x28);
        remaining = count;
        do {
            u8 *object = *entry++;
            if (object != 0 && *(u32 *)(object + 0x10) != 0)
                object[5] = value;
        } while (--remaining != 0);
    }
    objects[0x25] = 1;
}

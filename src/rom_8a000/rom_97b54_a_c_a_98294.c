typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001e64;

void Func_8098294(unsigned int value)
{
    u8 *entry = *(u8 **)&iwram_3001e64;
    int i;

    for (i = 0x3f; i >= 0; i--, entry += 0x70) {
        if (*(int *)entry != 0 && entry[0x54] == 1) {
            u8 *object = *(u8 **)(entry + 0x50);
            u8 *data = *(u8 **)(object + 0x28);
            if (*(s16 *)data == 200) {
                data[5] = value;
                object[0x25] = 1;
            }
        }
    }
}

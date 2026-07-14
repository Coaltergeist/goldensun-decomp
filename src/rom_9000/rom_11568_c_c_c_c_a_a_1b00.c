extern unsigned char *galloc_ewram(int index, unsigned int size);

struct Func_8011b00_Entry {
    unsigned int field00;
    unsigned short field04;
    unsigned short field06;
    unsigned short field08;
    unsigned short field0a;
    unsigned short field0c[16];
};

struct Func_8011b00_Data {
    struct Func_8011b00_Entry entries[4];
    unsigned short fieldb0;
};

void Func_8011b00(void)
{
    struct Func_8011b00_Entry *entry;
    struct Func_8011b00_Data *data;
    unsigned short i, j;

    data = (struct Func_8011b00_Data *)galloc_ewram(0x1c, 0xb4);
    entry = data->entries;
    for (i = 0; i != 4; i++) {
        entry->field00 = 0;
        entry->field04 = 0;
        entry->field06 = 0;
        entry->field08 = 0;
        entry->field0a = 0;
        for (j = 0; j != 16; j++) {
            entry->field0c[j] = 0;
        }
        entry++;
    }
    data->fieldb0 = 0;
}

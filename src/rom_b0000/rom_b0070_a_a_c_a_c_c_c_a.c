typedef unsigned char u8;
typedef unsigned short u16;

typedef struct MenuNode {
    unsigned int reserved;
    struct MenuNode *next;
} MenuNode;

/* Return the node selected by the menu state's current list index. */
void *Func_80b0694(u8 *menu)
{
    register int listOffset asm("r2") = 0xd2;
    register int countOffset asm("r4");
    register u8 *address asm("r3");
    register MenuNode *node asm("r2");
    register int count asm("r0");
    register int index asm("r1");

    listOffset <<= 2;
    asm volatile("" : "+r"(listOffset));
    countOffset = 0x39e;
    asm volatile("" : "+r"(listOffset), "+r"(countOffset));
    address = menu + listOffset;
    asm volatile("" : "+r"(address), "+r"(menu));
    node = *(MenuNode **)address;
    address = menu + countOffset;
    asm volatile("" : "+r"(address), "+r"(node), "+r"(menu),
                  "+r"(countOffset));
    index = 0;
    if (*(u16 *)address != 0) {
        address = menu + countOffset;
        asm volatile("" : "+r"(address));
        count = *(u16 *)address;
        do {
            index++;
            node = node->next;
        } while (index != count);
    }
    return node;
}

extern u16 tileOffsets[] asm(".Lb4100");

/* Apply one palette-bank value to six tile attributes in each listed row. */
void Func_80b06c0(int count, int palette, u8 *tiles)
{
    register int shifted asm("r3") = palette << 4;

    asm volatile("" : "+r"(shifted), "+r"(palette));
    palette = shifted + 1;
    asm volatile("" : "+r"(palette));

    if (count > 0) {
        u16 *offset = tileOffsets;
        do {
            u8 *tile = tiles + *offset++;

            count--;
            tile[4] = palette;
            tile[8] = palette;
            tile[12] = palette;
            tile[16] = palette;
            tile[20] = palette;
            tile[24] = palette;
        } while (count != 0);
    }
}

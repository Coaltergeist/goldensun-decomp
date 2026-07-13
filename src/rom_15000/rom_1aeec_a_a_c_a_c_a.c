typedef unsigned char u8;
typedef unsigned short u16;

typedef struct MenuNode {
    unsigned int reserved;
    struct MenuNode *next;
} MenuNode;

/* Return the node selected by the menu state's current list index. */
void *Func_801b36c(u8 *menu)
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

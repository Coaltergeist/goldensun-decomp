typedef unsigned char u8;
typedef signed char s8;
typedef signed short s16;

extern u8 *galloc_ewram(int slot, unsigned int size);
extern void _Func_8011590(void);

void Func_808c44c(void)
{
    u8 *state = galloc_ewram(0x1b, 0xccc);

    if (*(s16 *)(state + 0x19e) == 3) {
        u8 *menu = galloc_ewram(0x1f, 0x540);

        if (menu != 0 && *(s8 *)(menu + 0x53d) != 0) {
            menu[0x53a] = 0;
            menu[0x53b] = 0;
            menu[0x53c] = 1;
            menu[0x53d] = 0;
        }
        (*(u8 **)(state + 0x1e0))[0x5b] = 1;
        _Func_8011590();
    }
}

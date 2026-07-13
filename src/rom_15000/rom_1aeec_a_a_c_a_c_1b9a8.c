typedef unsigned char u8;
typedef unsigned short u16;

extern void LoadOldUIIcon(unsigned int icon, int palette, const void *value,
                          void *scratch, int mode);

void Func_801b9a8(u8 *state, int index)
{
    register u8 *entry asm("r2") = *(u8 **)(state + 0x348);
    int scratch;
    unsigned int value;

    while (index != 0) {
        index--;
        entry = *(u8 **)(entry + 4);
    }
    if (*(u16 *)(entry + 0xa) == 1 || *(u16 *)(entry + 0xa) == 6) {
        register unsigned int icon asm("r0") = *(u16 *)(entry + 0x20);
        register unsigned int first_icon asm("r3");

        asm("ldr %0, =0x1f" : "=r"(first_icon));
        icon -= first_icon;
        value = *(u16 *)(entry + 0xc);
        LoadOldUIIcon(icon, 0, &value, &scratch, 1);
    }
}

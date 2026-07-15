typedef unsigned char u8;

extern void *_Func_801eb64(int type, int index, int parameter, int x, int y);

void Func_80a33d4(u8 *object, int parameter)
{
    register u8 *base asm("r8") = object;
    register int saved_parameter asm("r7") = parameter;
    register int initial_y asm("r3") = 0xa8;
    register int y asm("r10");
    register int index asm("r5");
    register void **destination asm("r6") = (void **)base;

    index = 0;
    y = initial_y;
    destination = (void **)((u8 *)destination + 0x48);
    do {
        *destination++ = _Func_801eb64(2, index, saved_parameter, 0xf8, y);
        index++;
    } while (index <= 7);
    {
        register int next_y asm("r3") = 0xa8;
        destination = (void **)base;
        index = 8;
        y = next_y;
        destination = (void **)((u8 *)destination + 0x68);
    }
    do {
        *destination++ = _Func_801eb64(2, index, saved_parameter, 0x100, y);
        index++;
    } while (index <= 0xf);
    {
        register int next_y asm("r3") = 0xa8;
        destination = (void **)base;
        index = 0x10;
        y = next_y;
        destination = (void **)((u8 *)destination + 0x88);
    }
    do {
        *destination++ = _Func_801eb64(2, index, saved_parameter, 0x100, y);
        index++;
    } while (index <= 0x1f);
}

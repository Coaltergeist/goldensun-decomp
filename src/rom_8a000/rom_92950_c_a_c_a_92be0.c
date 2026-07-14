typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001ebc;

int Func_8092be0(int requested)
{
    register u8 *base asm("r4") = iwram_3001ebc;
    register u8 *object asm("r2") = *(u8 **)(base + 0x34);
    register int result asm("r5") = -1;
    register int index asm("r1") = 8;
    register int value asm("r3");

    if (object != 0 && object[0x54] == 1) {
        value = *(int *)(object + 0x50);
        value = *(int *)(value + 0x28);
        value = *(s16 *)value;
        if (value == requested) {
            result = 8;
            goto done;
        }
    }
    do {
        index++;
        if (index > 0x41)
            goto done;
        value = index << 2;
        value += 0x14;
        object = *(u8 **)(base + value);
        if (object == 0 || object[0x54] != 1)
            continue;
        value = *(int *)(object + 0x50);
        value = *(int *)(value + 0x28);
        value = *(s16 *)value;
        if (value == requested) {
            result = index;
            goto done;
        }
    } while (1);
done:
    return result;
}

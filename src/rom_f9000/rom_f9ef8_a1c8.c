typedef unsigned char u8;
typedef unsigned int u32;

void Func_80fa1c8(void *mplay, u8 *track)
{
    u8 *position = *(u8 **)(track + 0x40);
    register u32 value asm("r3");

    *(u8 **)(track + 0x40) = position + 1;
    value = *position;
    asm volatile ("" : : "r" (value));
}

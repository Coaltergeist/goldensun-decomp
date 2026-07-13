typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e98;

void Func_801a778(void)
{
    u8 *base = iwram_3001e98;

    *(u32 *)(base + 0x348) = 0;
    *(u16 *)(base + 0x39a) = 0;
    if ((*(u16 *)(base + 0x39e) & 0x80) != 0) {
        *(u16 *)(base + 0x39c) = 0;
        *(u16 *)(base + 0x39e) = 0;
    }
    *(u16 *)(base + 0x3a0) = 0;
    *(u16 *)(base + 0x394) = 0;
}

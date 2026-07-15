typedef signed short s16;
typedef unsigned char u8;

extern u8 *iwram_3001ebc;

int Func_808bc9c(void)
{
    u8 *base = iwram_3001ebc;
    return *(s16 *)(base + 0x16c) + *(s16 *)(base + 0x16e) +
           *(s16 *)(base + 0x170) + *(s16 *)(base + 0x172) +
           *(s16 *)(base + 0x174) + *(s16 *)(base + 0x176) +
           *(s16 *)(base + 0x178) + *(s16 *)(base + 0x17a) +
           *(s16 *)(base + 0x178) + *(s16 *)(base + 0x17c) +
           *(s16 *)(base + 0x17e) + *(s16 *)(base + 0x180) +
           *(s16 *)(base + 0x182);
}

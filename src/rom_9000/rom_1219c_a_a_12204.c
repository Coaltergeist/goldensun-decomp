typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern u8 ewram_202c800[];
extern u8 ewram_202c000[];

unsigned int Func_8012204(int *position)
{
    s32 x;
    s32 z;
    s32 tile;
    s32 sub;
    u8 t1;
    u8 v1;
    u8 t2;
    u8 v2;
    unsigned int result;
    u32 addr;

    x = position[0] >> 17;
    z = position[2] >> 17;
    tile = ((z / 8) & 0x3f) * 64 + ((x / 8) & 0x3f);
    sub = ((z / 2) & 3) * 2 + ((x / 4) & 1);
    t1 = *(u8 *)(0x6005000 + tile);
    addr = (u32)ewram_202c800 + t1 * 8 + sub;
    asm volatile("" : "+r"(addr));
    v1 = *(u8 *)addr;
    if (v1 != 0) {
        result = (x & 2) ? (v1 >> 4) : (v1 & 0xf);
        if (result != 0)
            return result;
    }
    t2 = *(u8 *)(0x6004000 + tile);
    addr = (u32)ewram_202c000 + t2 * 8 + sub;
    asm volatile("" : "+r"(addr));
    v2 = *(u8 *)addr;
    if (v2 != 0) {
        result = (x & 2) ? (v2 >> 4) : (v2 & 0xf);
        if (result != 0)
            return result;
    }
    return 7;
}

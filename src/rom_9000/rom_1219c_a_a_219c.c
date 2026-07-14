typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001e70;

int Func_801219c(int *position)
{
    register int raw_x asm("r3") = position[0];
    register int x asm("r4");
    register int y asm("r0");
    register u8 *state asm("r3");

    if (raw_x < 0)
        raw_x += 0xffff;
    x = raw_x >> 16;
    asm volatile("" : "+r" (x));
    {
        register int end asm("r2") = position[2];
        register int start asm("r3") = position[1];
        asm volatile("" : "+r" (end), "+r" (start));
        y = end - start;
    }
    if (y < 0)
        y += 0xffff;
    state = iwram_3001e70;
    asm volatile("" : "+r" (state));
    y >>= 16;

    if (state == 0)
        return 0;
    {
        register u8 *map asm("r1") = *(u8 **)(state + 400);
        register int tile_x asm("r4");
        register int tile_y asm("r3") = y / 16;
        register int temp_x asm("r3") = x;
        register int offset asm("r3");
        register int value asm("r3");
        if (temp_x < 0)
            temp_x += 15;
        tile_x = temp_x >> 4;
        if (y < 0)
            y += 15;
        tile_y = y >> 4;
        asm volatile("" : "+r" (map), "+r" (tile_x), "+r" (tile_y));
        offset = (tile_x + tile_y * 128) * 4;
        map += offset;
        value = map[2];
        {
            register int mask asm("r2") = 0xff;
            asm volatile("" : "+r" (map), "+r" (value), "+r" (mask));
            value ^= mask;
        }
        return (int)((u32)(value | -value) >> 31) - 1;
    }
}

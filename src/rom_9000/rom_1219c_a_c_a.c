extern unsigned int Func_8012204(int *position);
extern unsigned char ewram_2020000[];
extern unsigned char Data_1353c[] asm(".L1353c");

int Func_80122c8(int *position, int *terrainType)
{
    unsigned int actor = Func_8012204(position);
    int x = position[0];
    int z;
    unsigned int tileX;
    unsigned int tileZ;
    unsigned int type;
    unsigned int offset = 0;
    register unsigned int lookupIndex asm("r2");
    unsigned int *cell;

    if (x < 0)
        x += 0x1fffff;
    z = position[2];
    tileX = (x >> 21) & 0x1f;
    if (z < 0)
        z += 0x1fffff;
    tileZ = (z >> 21) & 0x1f;
    cell = (unsigned int *)(ewram_2020000 + ((tileX + tileZ * 32) * 4));
    if (((unsigned char *)cell)[3] & 0x80)
        offset = 0x10;
    type = (*cell << 1) >> 25;
    *terrainType = type;
    if (type == 0x15)
        offset = 0x20;
    lookupIndex = offset + actor;
    return Data_1353c[lookupIndex];
}

typedef unsigned char u8;

extern u8 *GetFieldActor(int actorId);
extern void _Actor_Stop(void);
extern int _Func_8011f54(int tile, int x, int z);

void MapActor_SetPos(int actorId, int x, int z)
{
    register int posX asm("r6") = x;
    register int posZ asm("r7") = z;
    register u8 *actor asm("r5");

    actor = GetFieldActor(actorId);
    if (actor != 0) {
        _Actor_Stop();
        *(int *)(actor + 0x24) = 0;
        *(int *)(actor + 0x28) = 0;
        *(int *)(actor + 0x2c) = 0;
        *(int *)(actor + 0x3c) = 0x80000000;
        *(int *)(actor + 0x38) = 0x80000000;
        *(int *)(actor + 0x08) = posX;
        *(int *)(actor + 0x10) = posZ;

        if ((actor[0x55] & 1) != 0) {
            register int mapX asm("r1");
            register int mapZ asm("r2");
            register int tile asm("r0");
            register u8 *tilePtr asm("r3");

            tilePtr = actor + 0x22;
            mapX = posX;
            tile = *tilePtr;
            asm volatile("" : "+r"(tilePtr), "+r"(mapX), "+r"(tile));

            if (mapX < 0)
                mapX += 0xffff;
            mapZ = posZ;
            mapX >>= 16;
            if (mapZ < 0)
                mapZ += 0xffff;
            mapZ >>= 16;
            tile = _Func_8011f54(tile, mapX, mapZ) << 16;
            *(int *)(actor + 0x0c) = *(int *)(actor + 0x0c) - *(int *)(actor + 0x14) + tile;
            *(int *)(actor + 0x14) = tile;
        }
    }
}

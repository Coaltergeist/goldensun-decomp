extern void *iwram_3001e70;

extern void _ClearFlag(int);

extern void _SetFlag(int);

struct MapActor
{
    short sprite;
    short flagID;
    int unk4;
    int x;
    int unk12;
    int z;
    int unk20;
};

struct Bounds
{
    int minX;
    int minY;
    int maxX;
    int maxY;
};

struct FieldState
{
    char pad[0xec];
    struct Bounds camera;
};

void Func_808b868(struct MapActor *actors)
{
    struct FieldState *pFVar1;
    int *minX;
    int px;
    int pz;

    pFVar1 = iwram_3001e70;
    _ClearFlag(0xb2 << 1);
    _SetFlag(0x165);
    if (actors->sprite != -1)
    {
        minX = &pFVar1->camera.minX;
        do
        {
            if (actors->flagID == 0)
            {
                px = actors->x;
                pz = actors->z;
                if (*minX > px)
                {
                    actors->flagID = 0x165;
                }
                else if (px > pFVar1->camera.maxX)
                {
                    actors->flagID = 0x165;
                }
                else if (pFVar1->camera.minY > pz)
                {
                    actors->flagID = 0x165;
                }
                else if (pz <= pFVar1->camera.maxY)
                {
                    actors->flagID = 0xb2 << 1;
                }
                else
                {
                    actors->flagID = 0x165;
                }
            }
            actors = (struct MapActor *)((char *)actors + 0x18);
        } while (actors->sprite != -1);
    }
}

typedef struct {
    unsigned char unused[2];
    unsigned char tile;
    unsigned char object;
} Tile;

typedef struct {
    unsigned char active;
    unsigned char unused[3];
} MapObject;

extern Tile gBuffer[];
extern MapObject ewram_202c000[];

int OvlFunc_916_2008be4(int x, int y, int direction)
{
    int i;

    for (i = 0; i <= 3; i++) {
        Tile *tile = &gBuffer[x + y * 0x80];

        if (tile->tile == 0xff)
            return -1;
        {
            register unsigned int object asm("r3") = tile->object;

            object <<= 2;
            asm volatile("" : "+r"(object));
            if (*(unsigned char *)(object + (unsigned int)ewram_202c000) != 0)
                return -1;
        }
        if (direction == 0)
            x++;
        else
            y++;
    }
    return 0;
}

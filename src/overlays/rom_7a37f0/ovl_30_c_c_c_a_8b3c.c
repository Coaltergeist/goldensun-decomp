typedef struct {
    unsigned char unused[2];
    unsigned char tile;
    unsigned char object;
} Tile;

extern Tile gBuffer[];

void OvlFunc_916_2008b3c(short *entry, int value)
{
    while (entry[0] != -1) {
        int x = entry[1];
        int y = entry[2];
        int direction = entry[3];
        int i;

        for (i = 3; i >= 0; i--) {
            gBuffer[x + y * 0x80].tile = value;
            if (direction == 0)
                x++;
            else
                y++;
        }
        entry += 6;
    }
}

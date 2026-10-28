extern unsigned int __Random(void);
struct CS924_SprayData { int words[10]; };
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
void OvlFunc_924_2009db4(int mode)
{
    struct CS924_SprayData data;
    unsigned int row, step;
    int forward, reverseX;
    int vx;

    API_PlaySound(0xd3);
    if (mode == 0) {
        API_CopyMapTiles(0x6f, 0x39, 0x71, 0x2a, 1, 1);
        API_CopyMapTiles(0x6f, 0x3b, 0x71, 0x2b, 1, 1);
    } else if (mode == 1) {
        API_CopyMapTiles(0x71, 0x3a, 0x70, 0x2e, 1, 1);
        API_CopyMapTiles(0x73, 0x3a, 0x71, 0x2e, 1, 1);
    } else {
        API_CopyMapTiles(0x73, 0x39, 0x74, 0x2c, 1, 1);
        API_CopyMapTiles(0x71, 0x39, 0x73, 0x2c, 1, 1);
    }
    data.words[1] = 7;
    data.words[2] = 0x8000;
    data.words[3] = 0x8000;
    row = 0;
    do {
        step = 0;
        reverseX = 0x32c0000 - (row << 20);
        forward = 0x2c00000 + (row << 20);
        do {
            if (step & 1) {
                if (mode == 0) {
                    vx = ((__Random() << 3) >> 16) * 0x3333;
                    OvlFunc_common0_10c(0x3180000, 0, forward, vx += -0xcccc,
                                        0, ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0x90000, &data);
                } else if (mode == 1) {
                    vx = ((__Random() << 3) >> 16) * 0x3333;
                    OvlFunc_common0_10c(forward + 0x600000, 0, 0x2ea0000, vx += -0xcccc,
                                        0, ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0x90000, &data);
                } else {
                    vx = ((__Random() << 3) >> 16) * 0x3333;
                    OvlFunc_common0_10c(reverseX, 0, 0x2ca0000, vx += -0xcccc,
                                        0, ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0x90000, &data);
                }
                API_CutsceneWait(1);
            }
            reverseX -= 0x10000;
            forward += 0x10000;
            step++;
        } while (step <= 7);
        if (mode == 0) {
            API_CopyMapTiles(0x6f, 0x3a, 0x71, row + 0x2b, 1, 1);
            API_CopyMapTiles(0x6f, 0x3b, 0x71, row + 0x2c, 1, 1);
        } else if (mode == 1) {
            API_CopyMapTiles(0x72, 0x3a, row + 0x71, 0x2e, 1, 1);
            API_CopyMapTiles(0x73, 0x3a, row + 0x72, 0x2e, 1, 1);
        } else {
            API_CopyMapTiles(0x72, 0x39, 0x73 - row, 0x2c, 1, 1);
            API_CopyMapTiles(0x71, 0x39, 0x72 - row, 0x2c, 1, 1);
        }
        row++;
    } while (row <= 1);
}

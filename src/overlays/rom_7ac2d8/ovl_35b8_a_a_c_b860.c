typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CopyMapTiles(s32 source_x, s32 source_y, s32 target_x,
                            s32 target_y, s32 width, s32 height);
extern void __CutsceneWait(s32 frames);
extern u32 __Random(void);
extern void OvlFunc_common0_10c(s32 x, s32 y, s32 z, s32 arg3, s32 arg4,
                                 s32 arg5, s32 arg6, void *config);

void OvlFunc_924_200b860(void) {
    u8 local[0x28];
    u8 *cfg;
    u32 x, y;
    s32 rnd0;
    s32 temp;

    __CopyMapTiles(0x4A, 0x3A, 0x46, 0x22, 1, 1);
    cfg = local;
    *(s32 *)(cfg + 4) = 7;
    *(s32 *)(cfg + 8) = 0x8000;
    *(s32 *)(cfg + 0xC) = 0x8000;
    y = 0;
    do {
        x = 0;
        do {
            if (x & 1) {
                rnd0 = ((u32)(__Random() << 3) >> 16) * 0x3333;
                rnd0 += 0xFFFF3334;
                OvlFunc_common0_10c(
                    0x690000, 0,
                    (((0 - x) - (y << 4)) << 16) + 0x2200000,
                    rnd0, 0,
                    (((u32)(__Random() << 3) >> 16) * 0x3333) + 0xFFFF3334,
                    0x90000, cfg);
                __CutsceneWait(1);
            }
            x += 1;
        } while (x <= 7);
        __CopyMapTiles(0x4A, 0x3B, 0x46, 0x22 - y, 1, 1);
        temp = 0x21 - y;
        __CopyMapTiles(0x4A, 0x3A, 0x46, temp, 1, 1);
        y += 1;
    } while (y <= 1);
}

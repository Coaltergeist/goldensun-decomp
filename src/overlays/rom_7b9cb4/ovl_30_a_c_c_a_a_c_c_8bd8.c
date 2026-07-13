extern unsigned char Flag_327[] asm("0x327");
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_801776c(int effect_id, int enabled);
extern void __PlaySound(int sound_id);
extern int __GetFlag(int flag_id);
extern void __ClearFlag(int flag_id);
extern void __SetFlag(int flag_id);
extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __CopyMapTiles(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __WaitFrames(int frames);
extern void __Func_809202c(void);

/* 隣の橋も独立したフラグで同じ反転処理を行う。 */
void OvlFunc_932_2008bd8(void)
{
    register int flag asm("r0");
    register int destination_x asm("r3");
    register int destination_y asm("r2");

    __CutsceneStart();
    __Func_801776c(0x1528, 1);
    __PlaySound(0x7d);
    flag = (int)Flag_327;
    if (__GetFlag(flag) != 0) {
        destination_x = 0x1d;
        destination_y = 0x51;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __Func_8010704(0x1c, 0x52, 1, 1, destination_x, destination_y);
        destination_x = 1;
        destination_y = 2;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __CopyMapTiles(0x2f, 0x1c, 0x1d, 0x11,
                       destination_x, destination_y);
        flag = (int)Flag_327;
        __ClearFlag(flag);
    } else {
        destination_x = 0x1d;
        destination_y = 0x51;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __Func_8010704(0x1e, 0x52, 1, 1, destination_x, destination_y);
        destination_x = 1;
        destination_y = 2;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __CopyMapTiles(0x2e, 0x1c, 0x1d, 0x11,
                       destination_x, destination_y);
        flag = (int)Flag_327;
        __SetFlag(flag);
    }
    __WaitFrames(0x14);
    __Func_809202c();
    __CutsceneEnd();
}

extern unsigned char Flag_326[] asm("0x326");
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

/* 橋の状態を反転し、対応する地図片と役者を入れ替える。 */
void OvlFunc_932_2008b3c(void)
{
    register int flag asm("r0");
    register int destination_x asm("r3");
    register int destination_y asm("r2");

    __CutsceneStart();
    __Func_801776c(0x1528, 1);
    __PlaySound(0x7d);
    flag = (int)Flag_326;
    if (__GetFlag(flag) != 0) {
        destination_x = 0x10;
        destination_y = 0x5c;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __Func_8010704(0x0f, 0x5d, 1, 1, destination_x, destination_y);
        destination_x = 1;
        destination_y = 2;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __CopyMapTiles(0x2f, 0x1d, 0x10, 0x1c,
                       destination_x, destination_y);
        flag = (int)Flag_326;
        __ClearFlag(flag);
    } else {
        destination_x = 0x10;
        destination_y = 0x5c;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __Func_8010704(0x11, 0x5d, 1, 1, destination_x, destination_y);
        destination_x = 1;
        destination_y = 2;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __CopyMapTiles(0x2e, 0x1d, 0x10, 0x1c,
                       destination_x, destination_y);
        flag = (int)Flag_326;
        __SetFlag(flag);
    }
    __WaitFrames(0x14);
    __Func_809202c();
    __CutsceneEnd();
}

typedef signed short s16;
typedef unsigned char u8;

extern u8 *iwram_3001ebc;
extern int __GetFlag(int flag_id);
extern void __SetFlag(int flag_id);
extern void __Func_801776c(int effect_id, int enabled);
extern void __PlaySound(int sound_id);
extern void __CutsceneWait(int frames);
extern void __Func_80105d4(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void OvlFunc_959_200a2a0(void);

/* 右側の仕掛けも別フラグで一度だけ演出する。 */
void OvlFunc_959_200a38c(void)
{
    register int destination_x asm("r5");
    register int destination_y asm("r6");
    register int flag_id asm("r0");

    if (*(s16 *)(iwram_3001ebc + 0xcb8) != 0) {
        flag_id = 0x948;
        if (__GetFlag(flag_id) == 0) {
            __Func_801776c(0x1528, 1);
            __PlaySound(0xbc);
            __CutsceneWait(1);
            destination_x = 3;
            destination_y = 0x37;
            __Func_80105d4(6, 0x4d, 1, 2, destination_x, destination_y);
            __CutsceneWait(5);
            __Func_80105d4(7, 0x4d, 1, 2, destination_x, destination_y);
            __CutsceneWait(1);
            OvlFunc_959_200a2a0();
            flag_id = 0x948;
            __SetFlag(flag_id);
        }
    }
}

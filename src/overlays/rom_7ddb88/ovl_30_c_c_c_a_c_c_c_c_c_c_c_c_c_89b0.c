extern void __Func_809ad90(int id);
extern void __SetFlag(int flag);
extern void __WaitFrames(int frame_count);
extern void __StopTask(void (*task)(void));
extern void __Func_8010704(int effect_id, int variant, int arg2, int arg3,
                           int position_x, int position_y);
extern void OvlFunc_955_2008714(void);
extern int L4834 asm(".L4834");
extern int L4838 asm(".L4838");

void OvlFunc_955_20089b0(void)
{
    int position_x;

    __Func_809ad90(0x1f);
    __SetFlag(0xcd << 2);
    if (L4834 != 0) {
        L4838 = 0;
    }
    __WaitFrames(0x1e);
    __WaitFrames(1);
    __StopTask(OvlFunc_955_2008714);
    position_x = 0x3a;
    __Func_8010704(0x3a, 0x1c, 7, 1, position_x, 0xd);
    __Func_8010704(0x39, 0xb, 1, 1, position_x, 0xb);
}

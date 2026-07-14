extern int __GetFlag(int flag);
extern void __CopyMapTiles(int source_x, int source_y, int target_x,
                           int target_y, int width, int height);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_8092950(int, int);

void OvlFunc_953_2009c6c(void)
{
    if (__GetFlag(0x950)) {
        __CopyMapTiles(0x40, 0, 0x30, 5, 2, 2);
        {
            register int stack0 asm("r3") = 0x10;
            register int stack1 asm("r2") = 8;

            __Func_8010704(0xe, 8, 2, 1, stack0, stack1);
        }
    } else {
        __Func_8092950(0x10, 2);
        if (__GetFlag(0x962)) {
            register int stack0 asm("r3") = 0xe;
            register int stack1 asm("r2") = 0xb;

            __Func_8010704(0x1e, 0x16, 1, 2, stack0, stack1);
        }
    }
}

extern void __CopyMapTiles(unsigned int source_x, unsigned int source_y,
                           unsigned int width, unsigned int height,
                           unsigned int dest_x, unsigned int dest_y);
extern void __Func_8010704(unsigned int arg0, unsigned int arg1,
                           unsigned int arg2, unsigned int arg3,
                           unsigned int arg4, unsigned int arg5);
extern void __WaitFrames(unsigned int frames);

void OvlFunc_888_200b270(void)
{
    {
        register unsigned int dest_x asm("r3") = 3;
        register unsigned int dest_y asm("r2") = 2;

        __CopyMapTiles(0, 0x40, 0xb, 0x44, dest_x, dest_y);
    }
    {
        register unsigned int arg4 asm("r3") = 0xb;
        register unsigned int arg5 asm("r2") = 8;

        __Func_8010704(0xb, 0xa, 3, 2, arg4, arg5);
    }
    __WaitFrames(1);
}

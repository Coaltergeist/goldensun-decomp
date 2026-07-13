extern void __CopyMapTiles(unsigned int source_x, unsigned int source_y,
                           unsigned int width, unsigned int height,
                           unsigned int dest_x, unsigned int dest_y);
extern void __Func_8010704(unsigned int arg0, unsigned int arg1,
                           unsigned int arg2, unsigned int arg3,
                           unsigned int arg4, unsigned int arg5);

void OvlFunc_887_20093b4(void)
{
    __CopyMapTiles(0x16, 0x55, 0x19, 0x55, 2, 2);
    __Func_8010704(0x19, 0xf, 2, 2, 0x19, 0x19);
}

/* Count the original alignment halfword in the function symbol size. */
asm(".align 2, 0\n.size OvlFunc_887_20093b4, . - OvlFunc_887_20093b4");

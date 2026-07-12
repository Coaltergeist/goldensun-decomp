/* OvlFunc_901_2008e30..OvlFunc_901_2008e60 extracted from
 * goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_c_a.s.
 * Total .text for this TU = 96 bytes (= 0x60).
 */
extern void __Func_8010704(int effect_id, int variant, int arg2, int arg3,
                           int position_x, int position_y);
extern void __CopyMapTiles(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);

void OvlFunc_901_2008e30(void)
{
    int effect_x = 0xd;
    int effect_y = 0x19;

    __Func_8010704(0x29, 0x2b, 1, 1, effect_x, effect_y);
    __CopyMapTiles(0x28, 0x2a, 0xc, 0x16, 3, 3);
}

void OvlFunc_901_2008e60(void)
{
    int effect_x = 0xd;
    int effect_y = 0x19;

    __Func_8010704(0x25, 0x2b, 1, 1, effect_x, effect_y);
    __CopyMapTiles(0x24, 0x2a, 0xc, 0x16, 3, 3);
}

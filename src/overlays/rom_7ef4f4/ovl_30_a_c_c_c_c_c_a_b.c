/* OvlFunc_965_200a4b0 extracted from
 * goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 */
extern void __Func_8010788(int effect_id, int variant, int arg2, int arg3,
                           int position_x, int position_y);

void OvlFunc_965_200a4b0(void)
{
    int position_x;
    int position_y;

    position_x = 0x11;
    position_y = 0x4e;
    __Func_8010788(0x20, 0x4e, 1, 2, position_x, position_y);
}

/* Count the original zero-fill alignment in the function's ELF size. */
asm(".align 2, 0\n.size OvlFunc_965_200a4b0, . - OvlFunc_965_200a4b0");

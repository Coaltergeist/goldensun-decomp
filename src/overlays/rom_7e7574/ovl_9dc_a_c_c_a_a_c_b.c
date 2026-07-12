/* OvlFunc_959_2008c78 extracted from
 * goldensun/asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a_a.s.
 * Total .text for this TU = 24 bytes (= 0x18).
 */
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void OvlFunc_959_2008b4c(void);

void OvlFunc_959_2008c78(void)
{
    register int position_x asm("r1") = 0xf8;
    register int position_y asm("r2") = 0xbc;
    register int actor_id asm("r0");

    /* Preserve the original constant-load and shift schedule. */
    asm volatile("" : "+r"(position_x), "+r"(position_y));
    actor_id = 0xc;
    asm volatile("" : "+r"(actor_id), "+r"(position_x), "+r"(position_y));
    position_x <<= 16;
    position_y <<= 17;
    asm volatile("" : "+r"(actor_id), "+r"(position_x), "+r"(position_y));
    __MapActor_SetPos(actor_id, position_x, position_y);
    OvlFunc_959_2008b4c();
}

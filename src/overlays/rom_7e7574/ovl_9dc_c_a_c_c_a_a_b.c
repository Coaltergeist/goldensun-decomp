/* Cluster OvlFunc_959_2009ca4..OvlFunc_959_2009ca4 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
void OvlFunc_959_2009ca4(unsigned int arg0)
{
    unsigned int msg;
    unsigned short t1;
    unsigned short t2;

    msg = 0x2421;
    __MessageID(msg);
    __ActorMessage(arg0, 0);
    t1 = 1;
    do { t1 = (unsigned short) t1; } while (0);
    __Func_80925cc(arg0, t1);
    __MessageID(msg + 1);
    __ActorMessage(arg0, 0);
    msg += 2;
    t2 = 4;
    do { t2 = (unsigned short) t2; } while (0);
    __MapActor_DoAnim(arg0, t2);
    __MessageID(msg);
    __ActorMessage(arg0, 0);
}

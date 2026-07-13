/* Cluster OvlFunc_959_2009d60..OvlFunc_959_2009d60 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
void OvlFunc_959_2009d60(unsigned int actor)
{
    unsigned int msg = 0x2428;
    unsigned short anim;

    __MessageID(msg);
    __ActorMessage(actor, 0);
    anim = 4;
    do { anim = (unsigned short) anim; } while (0);
    __MapActor_DoAnim(actor, anim);
    __MessageID(msg+1);
    __ActorMessage(actor, 0);
    anim = 1;
    do { anim = (unsigned short) anim; } while (0);
    __Func_80925cc(actor, anim);
    __MessageID(msg+2);
    __ActorMessage(actor, 0);
    msg += 3;
    anim = 3;
    do { anim = (unsigned short) anim; } while (0);
    __MapActor_DoAnim(actor, anim);
    __MessageID(msg);
    __ActorMessage(actor, 0);
}

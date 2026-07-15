// fakematch
/* Cluster OvlFunc_959_2009c4c..OvlFunc_959_2009c4c extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
void OvlFunc_959_2009c4c(unsigned int actor)
{
    unsigned int msg;
    unsigned short t2;
    unsigned short e;

    __Func_80925cc(actor, 1);
    do { msg = 0x241e; } while (0);
    __MessageID(msg);
    __ActorMessage(actor, 0);
    e = 0x81;
    {
        register unsigned int p2 __asm__("r2") = 0x3c;
        register unsigned int p0 __asm__("r0") = actor;
        __asm__ volatile ("" : : "r" (p2), "r" (p0));
        e <<= 1;
        __MapActor_Emote(p0, e, p2);
    }
    __MessageID(msg+1);
    __ActorMessage(actor, 0);
    msg += 2;
    t2 = 4;
    do { t2 = (unsigned short) t2; } while (0);
    __MapActor_DoAnim(actor, t2);
    __MessageID(msg);
    __ActorMessage(actor, 0);
}

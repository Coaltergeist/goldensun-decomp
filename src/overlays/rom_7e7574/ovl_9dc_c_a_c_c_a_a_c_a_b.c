// fakematch
/* Cluster OvlFunc_959_2009cf0..OvlFunc_959_2009cf0 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
void OvlFunc_959_2009cf0(unsigned int actor)
{
    unsigned int msg = 0x2424;
    unsigned short anim;
    unsigned short z;

    __MessageID(msg);
    z = 0;
    do { z = (unsigned short) z; } while (0);
    __ActorMessage(actor, z);
    __CutsceneWait(0x78);
    {
        register unsigned int p2 __asm__("r2") = 0x3c;
        register unsigned int p0 __asm__("r0") = actor;
        __asm__ volatile ("" : : "r" (p2), "r" (p0));
        __MapActor_Emote(p0, 0x101, p2);
    }
    __MessageID(msg+1);
    __ActorMessage(actor, 0);
    anim = 1;
    do { anim = (unsigned short) anim; } while (0);
    __Func_80925cc(actor, anim);
    __MessageID(msg+2);
    __ActorMessage(actor, 0);
    msg += 3;
    anim = 4;
    do { anim = (unsigned short) anim; } while (0);
    __MapActor_DoAnim(actor, anim);
    __MessageID(msg);
    __ActorMessage(actor, 0);
}

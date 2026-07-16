// fakematch
/* Cluster OvlFunc_946_20095d0..OvlFunc_946_20095d0 extracted from goldensun/asm/overlays/rom_7ced6c/ovl_30_c_c_a_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_a.o and asm/overlays/rom_7ced6c/ovl_30_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7ced6c/overlay.ld.
 */
struct Actor {
unsigned char pad[0x59];
unsigned char unk59;
};

void OvlFunc_946_20095d0(unsigned int param_1) {
    struct Actor *actor;
    unsigned int w;
    unsigned int z;

    actor = __MapActor_GetActor(0xe);
    if (actor != 0) {
        actor->unk59 = 0;
    }
    actor = __MapActor_GetActor(param_1);
    __Actor_SetSpriteFlags(actor, 0);

    w = 0x90;
    z = 0xa0;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 16;
        __asm__ volatile ("" : "+r" (w));
        z <<= 17;
        __Func_8012078(rq, w, z, 0xfd);
    }

    w = 0xbc;
    z = 0xa0;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 18;
        __asm__ volatile ("" : "+r" (w));
        z <<= 17;
        __Func_8012078(rq, w, z, 0xfd);
    }

    __SetFlag(0x243);
}

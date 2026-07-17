// fakematch
/* Cluster OvlFunc_952_2008348..OvlFunc_952_2008348 extracted from goldensun/asm/overlays/rom_7d768c/ovl_30_c_a_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d768c/ovl_30_c_a_a_a.o and asm/overlays/rom_7d768c/ovl_30_c_a_a_c.o in
 * goldensun/overlays/rom_7d768c/overlay.ld.
 */
void OvlFunc_952_2008348(unsigned int actor)
{
    int r;
    unsigned int msg = 0x2006;
    register unsigned int a __asm__("r5");

    __asm__ __volatile__ ("" : "+r" (msg));
    a = actor;

    __MessageID(msg);
    __Func_8092c40(a, 0);
    r = __Func_8091c7c(0, 0);
    if (r == 0) {
        __CutsceneWait(10);
        {
            unsigned int w = 0x81;
            register unsigned int rq __asm__("r0") = a;
            __asm__ volatile ("" : : "r" (rq));
            w <<= 1;
            __MapActor_Emote(rq, w, 0x28);
        }
        __MessageID(msg + 1);
    } else {
        __CutsceneWait(10);
        {
            register unsigned int rq __asm__("r0") = a;
            __asm__ volatile ("" : : "r" (rq));
            __MapActor_Emote(rq, 0x105, 0x28);
        }
        __MessageID(msg + 2);
    }
    __ActorMessage(a, 0);
}

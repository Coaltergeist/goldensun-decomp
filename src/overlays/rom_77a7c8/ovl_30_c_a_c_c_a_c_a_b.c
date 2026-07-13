// fakematch
/* Cluster OvlFunc_881_200a858..OvlFunc_881_200a858 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a.o and asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern unsigned char L679c[] __asm__(".L679c");

void OvlFunc_881_200a858(void)
{
    unsigned long msgactor;
    unsigned int speedx;
    unsigned int speedy;

    __CutsceneStart();
    __Func_808c44c();
    __MessageID(0x2643);
    msgactor = *(unsigned long *)L679c;
    __ActorMessage(msgactor, 0);
    __Func_808c4c0();
    speedx = 0x80;
    speedy = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        speedx <<= 9;
        __asm__ volatile ("" : "+r" (speedx));
        speedy <<= 8;
        __MapActor_SetSpeed(rq, speedx, speedy);
    }
    {
        register unsigned int rq2 __asm__("r0") = 0;
        register unsigned long r1val __asm__("r1") = 0x1778;
        __asm__ volatile ("" : : "r" (rq2), "r" (r1val));
        __Func_80921c4(rq2, r1val, 0xd48);
    }
    __CutsceneEnd();
}

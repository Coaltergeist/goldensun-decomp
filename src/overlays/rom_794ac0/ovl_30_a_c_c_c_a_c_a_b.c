/* Cluster OvlFunc_899_20099e4..OvlFunc_899_20099e4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_a_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
// fakematch
extern unsigned char iwram_3001ebc[];

void OvlFunc_899_20099e4(void)
{
    unsigned int r3;
    unsigned int w1, z1;
    unsigned int w2, z2;
    unsigned short t3;

    w1 = 0x80;
    z1 = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w1 <<= 8;
        __asm__ volatile ("" : "+r" (w1));
        z1 <<= 7;
        __MapActor_SetSpeed(rq, w1, z1);
    }

    w2 = 0xba;
    z2 = 0xcc;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w2 <<= 2;
        __asm__ volatile ("" : "+r" (w2));
        z2 <<= 1;
        __MapActor_TravelToAnimWait(rq, w2, z2);
    }

    if (__GetFlag(0x854) == 0) {
        __CutsceneStart();
        __MessageID(0x12c3);
        t3 = 8;
        do { t3 = (unsigned short) t3; } while (0);
        __ActorMessage(t3, 0);
        __CutsceneEnd();
    }
    r3 = *(unsigned int *)iwram_3001ebc;
    *(unsigned int *)(r3 + (0xe4 << 1)) = 0x10;
    __PlaySound(0x7b);
    __Func_8091e9c(0xe);
}

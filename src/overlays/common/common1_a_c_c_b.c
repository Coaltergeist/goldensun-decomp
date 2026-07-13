// fakematch
/* Cluster OvlFunc_common1_1578..OvlFunc_common1_1578 extracted from goldensun/asm/overlays/common/common1_a_c_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_a_c_c_a.o and asm/overlays/common/common1_a_c_c_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */

void OvlFunc_common1_1578(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned char *actor;
    int v;
    unsigned short five;

    actor = (unsigned char *)__GetFieldActor(arg0);
    if (actor != (unsigned char *)0) {
        v = 0x80 << 10;
        *(int *)(actor + 0x30) = v;
        v >>= 1;
        *(int *)(actor + 0x34) = v;
        __asm__ volatile ("" ::: "memory");
        {
            register unsigned char *rp __asm__("r3") = actor;
            register unsigned int rz __asm__("r2") = 0;
            __asm__ volatile ("" : : "r" (rp), "r" (rz));
            rp += 0x5b;
            *rp = rz;
        }
        __Actor_Stop();
        five = 5;
        do { five = (unsigned short) five; } while (0);
        __Actor_SetAnim((int)actor, five);
        __Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
    }
}

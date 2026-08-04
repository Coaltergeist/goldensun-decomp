// fakematch
/* Cluster OvlFunc_881_20097a4..OvlFunc_881_20097a4 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_a.o and asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
void OvlFunc_881_20097a4(void)
{
    unsigned char *actor;
    unsigned char *other;
    int flag;

    actor = (unsigned char *) __MapActor_GetActor(0xf);
    other = (unsigned char *) __MapActor_GetActor(0xe);
    *(unsigned int *)(actor + 8) = *(unsigned int *)(other + 8);
    *(unsigned int *)(actor + 0x10) = *(unsigned int *)(other + 0x10);
    if (*(int *)(actor + 0xc) < 0xa0000) {
        register int p0 __asm__("r0");
        p0 = 0x80;
        *(unsigned int *)(actor + 0xc) = 0xa0000;
        __asm__ volatile ("" : "+r" (p0));
        p0 <<= 2;
        flag = __GetFlag(p0);
        if (flag == 0) {
            unsigned short *p;
            unsigned short v;
            __PlaySound(0x91);
            {
                register unsigned char *pp0 __asm__("r0") = actor;
                __asm__ volatile ("" : : "r" (pp0));
                __Actor_SetAnim(pp0, 3);
            }
            __SetFlag(0x80 << 2);
            p = (unsigned short *)(actor + 0x64);
            v = 1;
            *p = v;
        }
    }
}

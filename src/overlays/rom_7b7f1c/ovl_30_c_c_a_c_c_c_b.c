// fakematch 
/* Cluster OvlFunc_930_2008ac0..OvlFunc_930_2008ac0 extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_a.o and asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
// fakematch
extern unsigned char iwram_3001ebc[];

void OvlFunc_930_2008ac0(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned short t2;
    register int a0 __asm__("r0");
    register int a1 __asm__("r1");
    register int a2 __asm__("r2");

    __CutsceneStart();
    __MessageID(0x18b9);
    a0 = 10;
    __asm__ volatile ("" : "+r" (a0));
    a1 = 0x105;
    __asm__ volatile ("" : "+r" (a1));
    a2 = 0x3c;
    __MapActor_Emote(a0, a1, a2);
    __Func_8092c40(10, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
    }
    __CutsceneWait(0x14);
    __MapActor_DoAnim(10, 4);
    __CutsceneWait(0x14);
    t2 = 10;
    do { t2 = (unsigned short) t2; } while (0);
    __Func_8093040(t2, 0, 0x14);
    __CutsceneEnd();
}

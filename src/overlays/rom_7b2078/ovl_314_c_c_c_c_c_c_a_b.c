// fakematch
/* Cluster OvlFunc_926_200c0dc..OvlFunc_926_200c0dc extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a_a.o and asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
extern unsigned char *iwram_3001f30;

void OvlFunc_926_200c0dc(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p;
    unsigned short t1;

    __SetFlag(0x140);
    t1 = 1;
    do { t1 = (unsigned short) t1; } while (0);
    __Func_8096fb0(0x8d, t1);
    p = iwram_3001f30;
    __asm__ volatile ("" : : "r" (p));
    {
        register unsigned int p0 __asm__("r0") = arg0;
        __asm__ volatile ("" : : "r" (p0));
        __Func_80970f8(p0, arg1);
    }
    p += 0x23;
    *p = 0;
    __Func_809728c();
    __FieldMove(1);
    __WaitFrames(1);
}

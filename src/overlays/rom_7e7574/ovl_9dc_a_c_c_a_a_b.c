// fakematch
/* Cluster OvlFunc_959_2008e80..OvlFunc_959_2008e80 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a_a.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
// fakematch
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_959_2008e30(int a);

void OvlFunc_959_2008e80(void) {
    unsigned int r5;
    short *p;
    short v;

    r5 = *(unsigned int *)iwram_3001ebc;
    if (__CheckPartyItem(0xea) != -1) {
        p = (short *)(r5 + (0xb6 << 1));
        v = *p;
        OvlFunc_959_2008e30(v - 0x28);
        __PlaySound(0x9d);
        {
            register unsigned int p0 __asm__("r0") = 0xc0;
            register unsigned int p1 __asm__("r1") = 0xc0;
            register unsigned int p2 __asm__("r2") = 0x80;
            __asm__ volatile ("" : "+r" (p0), "+r" (p1), "+r" (p2));
            p0 <<= 10;
            __asm__ volatile ("" : "+r" (p0));
            p1 <<= 10;
            p2 <<= 9;
            __Func_8012330(p0, p1, p2);
        }
        {
            register int q0 __asm__("r0");
            register int q1 __asm__("r1");
            q0 = -1;
            q1 = -1;
            __asm__ volatile ("" : "+r" (q0), "+r" (q1));
            {
                register unsigned int q2 __asm__("r2") = 0xe666;
                __asm__ volatile ("" : "+r" (q2));
                __Func_8012330(q0, q1, q2);
            }
        }
        __SetFlag(v + 0x330);
    }
}

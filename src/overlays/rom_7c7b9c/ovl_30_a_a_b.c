/* Cluster OvlFunc_943_2008570..OvlFunc_943_2008570 extracted from goldensun/asm/overlays/rom_7c7b9c/ovl_30_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c7b9c/ovl_30_a_a_a.o and asm/overlays/rom_7c7b9c/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7c7b9c/overlay.ld.
 */
extern unsigned int __Func_8004458(unsigned int);

unsigned int OvlFunc_943_2008570(unsigned char *arg0) {
    unsigned int v;
    unsigned int t;
    v = (__Func_8004458((unsigned int)arg0) << 5) >> 16;
    if (v == 6) {
        t = 0xd0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    } else if (v == 9) {
        t = 0xb0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    }
    return 1;
}

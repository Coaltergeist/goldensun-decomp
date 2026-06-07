/* Cluster OvlFunc_947_200a080..OvlFunc_947_200a080 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_1528_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_1528_a_c_a.o and asm/overlays/rom_7d0e88/ovl_1528_a_c_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern int __MapActor_GetActor(int);
extern unsigned char *iwram_3001ee0;

void OvlFunc_947_200a080(void) {
    unsigned char *p;

    p = (unsigned char *)__MapActor_GetActor(0);
    *(unsigned int *)(iwram_3001ee0 + 0x18) = (unsigned int)p;
    p[0x62] = 1;
}

/* Cluster OvlFunc_897_200a93c..OvlFunc_897_200a93c extracted from goldensun/asm/overlays/rom_791794/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_791794/ovl_30_c_c_a_c_a.o and asm/overlays/rom_791794/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_791794/overlay.ld.
 */
extern unsigned char iwram_3001e40[];
extern void OvlFunc_897_200a84c(int arg0);
extern int _umodsi3_RAM(int a, int b);

void OvlFunc_897_200a93c(void)
{
    if ((*(unsigned int *)iwram_3001e40 & 1) == 0) {
        if ((unsigned int)_umodsi3_RAM(__Random(), 100) > 0x32) {
            OvlFunc_897_200a84c(1);
        } else {
            OvlFunc_897_200a84c(0);
        }
    }
}

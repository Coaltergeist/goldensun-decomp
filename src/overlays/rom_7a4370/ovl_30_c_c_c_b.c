/* Cluster OvlFunc_917_20091e8..OvlFunc_917_20091e8 extracted from goldensun/asm/overlays/rom_7a4370/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a4370/ovl_30_c_c_c_a.o and asm/overlays/rom_7a4370/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7a4370/overlay.ld.
 */
extern void __DeleteActor(void);

unsigned int OvlFunc_917_20091e8(int *p)
{
    *(unsigned int *)((char *)p + 0x18) += 0x1eb8;
    if (*(unsigned int *)((char *)p + 0x38) == 0x80000000) {
        if (*(unsigned int *)((char *)p + 0x3c) == 0x80000000) {
            if (*(unsigned int *)((char *)p + 0x40) == 0x80000000) {
                __DeleteActor();
            }
        }
    }
    return 1;
}

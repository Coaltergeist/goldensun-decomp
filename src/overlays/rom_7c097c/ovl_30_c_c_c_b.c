/* Cluster OvlFunc_936_200b184..OvlFunc_936_200b184 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_c_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
extern unsigned int iwram_3001ebc;

unsigned int OvlFunc_936_200b184(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;
    unsigned int *entry;

    base = (unsigned int *)iwram_3001ebc;
    i = 8;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        entry = (unsigned int *)*r2++;
        if ((int)arg0 == (*(int *)((char *)entry + 8) >> 20)) {
            if ((int)arg1 == (*(int *)((char *)entry + 0x10) >> 20))
                return (unsigned int)entry;
        }
        i++;
    } while (i <= 0x41);
    return 0;
}

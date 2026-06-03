/* Cluster OvlFunc_913_200a798..OvlFunc_913_200a798 extracted from goldensun/asm/overlays/rom_7a04ac/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a04ac/overlay.ld.
 */
extern void __Func_800c0f4(void);

unsigned int OvlFunc_913_200a798(unsigned char *param)
{
    int v38, v3c, v40;

    *(unsigned int *)(param + 0x18) = *(unsigned int *)(param + 0x18) + 0x1eb8;
    v38 = *(int *)(param + 0x38);
    if (v38 == (int)(0x80 << 24)) {
        v3c = *(int *)(param + 0x3c);
        if (v3c == v38) {
            v40 = *(int *)(param + 0x40);
            if (v40 == v3c) {
                __Func_800c0f4();
            }
        }
    }
    return 1;
}

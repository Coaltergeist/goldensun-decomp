/* Cluster OvlFunc_924_200d578..OvlFunc_924_200d578 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_35b8_a_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_35b8_a_c_a.o and asm/overlays/rom_7ac2d8/ovl_35b8_a_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern unsigned int iwram_3001edc;
extern unsigned int gScript_924__0200de2c;

void OvlFunc_924_200d578(void)
{
    unsigned int r6;
    unsigned int r5;

    r6 = *(unsigned int *)*(unsigned int *)&iwram_3001edc;
    if (*(unsigned int *)r6 != 0) {
        *(unsigned int *)r6 = 0;
        __ClearFlag(0x161);
        r5 = *(unsigned int *)((char *)r6 + 0x14);
        if (r5 != 0) {
            unsigned short v = 0;
            *(unsigned short *)((char *)r5 + 0x64) = v;
            __Actor_SetScript(r5, &gScript_924__0200de2c);
            __Actor_SetAnim(r5, 7);
            *(unsigned int *)((char *)r6 + 0x14) = 0;
        }
    }
}

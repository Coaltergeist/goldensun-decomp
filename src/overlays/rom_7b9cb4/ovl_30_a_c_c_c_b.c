/* Cluster OvlFunc_932_200b460..OvlFunc_932_200b460 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
void OvlFunc_932_200b460(unsigned int arg0) {
    unsigned char *p;

    p = __MapActor_GetActor(arg0);
    p[0x59] &= 0xfe;
    __Func_8012078(0, *(int *)(p + 8), *(int *)(p + 0x10), 0xff);
}

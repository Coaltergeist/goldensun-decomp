/* Cluster OvlFunc_968_20099c0..OvlFunc_968_20099c0 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Func_8012078(unsigned int, unsigned int, unsigned int, unsigned int);

void OvlFunc_968_20099c0(void) {
    unsigned int i;
    unsigned char *p;

    i = 0;
    do {
        p = __MapActor_GetActor(i + 11);
        if (*(int *)(p + 0xc) > (int)0xfff00000) {
            __Func_8012078(0, *(unsigned int *)(p + 8), *(unsigned int *)(p + 0x10), 0xff);
        }
        i++;
    } while (i <= 1);
}

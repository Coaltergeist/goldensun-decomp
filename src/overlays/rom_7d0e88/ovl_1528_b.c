/* Cluster OvlFunc_947_200a0b8..OvlFunc_947_200a0b8 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_1528.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_1528_a.o and asm/overlays/rom_7d0e88/ovl_1528_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int id);

unsigned int OvlFunc_947_200a0b8(unsigned char *arg0)
{
    unsigned char *p;
    unsigned char *flags;

    p = __MapActor_GetActor(0);
    if (*(int *)(arg0 + 0x10) > *(int *)(p + 0x10)) {
        flags = arg0 + 0x23;
        *flags = *flags & 0xfd;
        if (*(int *)(arg0 + 0xc) < *(int *)(p + 0xc)) {
            *flags = *flags | 2;
        }
    }
    return 0;
}

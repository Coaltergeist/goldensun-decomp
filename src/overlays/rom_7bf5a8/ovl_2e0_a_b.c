/* Cluster OvlFunc_935_2008334..OvlFunc_935_2008334 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_a_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_a_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int);

unsigned int OvlFunc_935_2008334(void)
{
    unsigned char *p;
    int a, b;
    p = __MapActor_GetActor(9);
    a = *(int *)(p + 0x10) / 0x100000;
    b = *(int *)(p + 8) / 0x100000;
    if (b == 0xf && a == 0x36)
        return 1;
    return 0;
}

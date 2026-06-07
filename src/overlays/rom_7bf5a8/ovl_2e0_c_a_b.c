/* Cluster OvlFunc_935_2008458..OvlFunc_935_2008458 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_c_a_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_c_a_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int);

unsigned int OvlFunc_935_2008458(void)
{
    unsigned char *p;
    int a, b;

    p = __MapActor_GetActor(0xa);
    a = *(int *)(p + 0x10) / 0x100000;
    b = *(int *)(p + 8) / 0x100000;
    if (b == 16 && a == 12)
        return 1;
    return 0;
}

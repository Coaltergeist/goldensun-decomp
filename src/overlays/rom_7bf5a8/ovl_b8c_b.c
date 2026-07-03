/* Cluster OvlFunc_935_2008c08..OvlFunc_935_2008c08 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_b8c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_b8c_a.o and asm/overlays/rom_7bf5a8/ovl_b8c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
extern void OvlFunc_935_2008aa0(void);

void OvlFunc_935_2008c08(void)
{
    void *a;
    int r5;
    int r6;

    r5 = 10;
    r6 = 5;
    do {
        a = __MapActor_GetActor(r5);
        __Actor_SetSpriteFlags(a, 0);
        a = __MapActor_GetActor(r5);
        *(unsigned int *)((char *)a + 0x44) = 0x1999;
        *(unsigned int *)((char *)a + 0x48) = 0;
        *(unsigned int *)((char *)a + 0xc) = 0xff0000;
        r6 -= 1;
        r5 += 1;
    } while (r6 >= 0);
    __StartTask(OvlFunc_935_2008aa0, 0xc80);
}

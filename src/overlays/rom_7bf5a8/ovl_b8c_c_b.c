/* Cluster OvlFunc_935_2008c50..OvlFunc_935_2008c50 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_b8c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_b8c_c_a.o and asm/overlays/rom_7bf5a8/ovl_b8c_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
extern void OvlFunc_935_20089c0(void);

void OvlFunc_935_2008c50(void)
{
    void *a;
    int r5;
    int r6;

    r6 = 0xb;
    r5 = 0;
    do {
        a = __MapActor_GetActor(r6);
        __Actor_SetSpriteFlags(a, 0);
        a = __MapActor_GetActor(r6);
        *(unsigned int *)((char *)a + 0x44) = 0x1999;
        *(unsigned int *)((char *)a + 0x48) = 0;
        *(unsigned int *)((char *)a + 0xc) = 0xff0000;
        __Func_8092b08(r5 + 0xb, 1);
        r5 += 1;
        r6 += 1;
    } while (r5 <= 3);
    __StartTask(OvlFunc_935_20089c0, 0xc80);
}

/* Cluster OvlFunc_927_200903c..OvlFunc_927_200903c extracted from goldensun/asm/overlays/rom_7b4558/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b4558/ovl_30_c_c_a_a.o and asm/overlays/rom_7b4558/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7b4558/overlay.ld.
 */
extern void *__MapActor_GetActor(int a);
extern void OvlFunc_927_2008cd0(unsigned int *arr);

void OvlFunc_927_200903c(void)
{
    unsigned char *p = (unsigned char *)__MapActor_GetActor(0);
    unsigned int arr[3];

    arr[0] = (*(unsigned int *)(p + 8) & 0xfff00000) + (0x80 << 12);
    arr[1] = *(unsigned int *)(p + 0xc);
    arr[2] = (*(unsigned int *)(p + 0x10) & 0xfff00000) + 0xffe80000;
    OvlFunc_927_2008cd0(arr);
}

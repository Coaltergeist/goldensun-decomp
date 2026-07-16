/* Cluster OvlFunc_915_2008ba4..OvlFunc_915_2008ba4 extracted from goldensun/asm/overlays/rom_7a2bf0/ovl_30_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a2bf0/ovl_30_c_c_a_a.o and asm/overlays/rom_7a2bf0/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7a2bf0/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

void OvlFunc_915_2008ba4(void)
{
    unsigned char *p;
    unsigned char *base;
    unsigned int arr[3];
    unsigned int t;

    base = (unsigned char *)&gState;
    p = (unsigned char *)__MapActor_GetActor(*(unsigned int *)(base + (0xfa * 2)));
    t = *(unsigned int *)(p + 8) & 0xfff00000;
    arr[0] = t + 0x80000;
    arr[1] = *(unsigned int *)(p + 0xc);
    arr[2] = (*(unsigned int *)(p + 0x10) & 0xfff00000) + 0x80000;
    arr[0] = t + 0x280000;
    OvlFunc_915_2008aac(arr);
}

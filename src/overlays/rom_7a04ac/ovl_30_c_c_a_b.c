/* Cluster OvlFunc_913_2008c14..OvlFunc_913_2008c14 extracted from goldensun/asm/overlays/rom_7a04ac/ovl_30_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a04ac/ovl_30_c_c_a_a.o and asm/overlays/rom_7a04ac/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7a04ac/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

void OvlFunc_913_2008c14(void)
{
    unsigned char *p;
    unsigned int arr[3];
    unsigned int t;
    unsigned int r2;
    unsigned int *leader;

    r2 = 0xfa;
    r2 <<= 1;
    leader = (unsigned int *)((char *)&gState + r2);
    p = (unsigned char *)__MapActor_GetActor(*leader);
    t = *(unsigned int *)(p + 8) & 0xfff00000;
    arr[0] = t + (0x80 << 12);
    arr[1] = *(unsigned int *)(p + 0xc);
    arr[2] = (*(unsigned int *)(p + 0x10) & 0xfff00000) + (0x80 << 12);
    arr[0] = t + (0xa0 << 14);
    OvlFunc_913_2008b1c(arr);
}

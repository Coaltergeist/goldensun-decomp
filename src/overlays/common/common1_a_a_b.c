/* Cluster OvlFunc_common1_1334..OvlFunc_common1_1334 extracted from goldensun/asm/overlays/common/common1_a_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_a_a_a.o and asm/overlays/common/common1_a_a_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern unsigned char L14[] __asm__(".L14");

void OvlFunc_common1_1334(void)
{
    unsigned char *r5;
    int r3;
    int r2;

    r5 = L14;
    r2 = 0;
    r3 = *(short *)(r5 + r2);
    r2 = 1;
    r2 = -r2;
    if (r3 != r2)
        return;
    *(short *)r5 = __Func_80209b0();
}

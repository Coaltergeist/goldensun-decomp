/* OvlFunc_943_2008bb8..OvlFunc_943_2008bf0 extracted from
 * goldensun/asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c_a_c.s.
 * Total .text for this TU = 112 bytes (= 0x70).
 */
extern int __GetFlag(int flag);
extern void __PlaySound(int sound_id);
extern void __CopyMapTiles(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __SetFlag(int flag);

void OvlFunc_943_2008bb8(void)
{
    if (!__GetFlag(0x271)) {
        register int destination_x asm("r3");
        register int destination_y asm("r2");
        register int flag asm("r0");

        __PlaySound(0x9e);
        destination_x = 1;
        destination_y = 3;
        /* Preserve the original stack-argument register order. */
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __CopyMapTiles(0x1e, 0x5e, 0xd, 0x5e,
                       destination_x, destination_y);
        /* GCC otherwise keeps the repeated flag ID in a saved register. */
        asm volatile("ldr %0, .L4" : "=r"(flag));
        __SetFlag(flag);
    }
}

void OvlFunc_943_2008bf0(void)
{
    if (!__GetFlag(0x272)) {
        register int destination_x asm("r3");
        register int destination_y asm("r2");
        register int flag asm("r0");

        __PlaySound(0x9e);
        destination_x = 1;
        destination_y = 2;
        /* Preserve the original stack-argument register order. */
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __CopyMapTiles(0x1e, 0x6c, 0xd, 0x6c,
                       destination_x, destination_y);
        /* GCC otherwise keeps the repeated flag ID in a saved register. */
        asm volatile("ldr %0, .L8" : "=r"(flag));
        __SetFlag(flag);
    }
}

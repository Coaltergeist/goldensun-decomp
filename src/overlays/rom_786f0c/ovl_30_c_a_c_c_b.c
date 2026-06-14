/* Cluster OvlFunc_886_2008140..OvlFunc_886_2008140 extracted from goldensun/asm/overlays/rom_786f0c/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_786f0c/ovl_30_c_a_c_c_a.o and asm/overlays/rom_786f0c/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_786f0c/overlay.ld.
 */
extern unsigned char L1ffc[] __asm__(".L1ffc");
extern unsigned char L1da4[] __asm__(".L1da4");
extern unsigned int gOvl_02009ac8;
extern unsigned int ActorCmd_ARRAY_918__02009c00;

unsigned int *OvlFunc_886_2008140(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)&gOvl_02009ac8;
    if (__GetFlag(0x87a))
        return (unsigned int *)L1ffc;
    if (__GetFlag(0x815))
        return (unsigned int *)L1da4;
    return (unsigned int *)&ActorCmd_ARRAY_918__02009c00;
}

/* Cluster OvlFunc_964_2009424..OvlFunc_964_2009424 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int);
extern int OvlFunc_964_2008cd0(unsigned int *);
extern void OvlFunc_964_20093e0(void);

void OvlFunc_964_2009424(void) {
    unsigned int args[3];
    unsigned char *base;

    base = __MapActor_GetActor(0);
    args[0] = *(unsigned int *)(base + 8);
    args[1] = *(unsigned int *)(base + 0xc);
    args[2] = *(unsigned int *)(base + 0x10) + 0x200000;
    if (OvlFunc_964_2008cd0(args) != 0) {
        OvlFunc_964_20093e0();
    }
}

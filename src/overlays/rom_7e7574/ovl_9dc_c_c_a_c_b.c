/* Cluster OvlFunc_959_200cd0c..OvlFunc_959_200cd0c extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_c_a_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_c_a_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern int __GetFlag(int);
extern int __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8097608(void);
extern void OvlFunc_959_200cbfc(void);
extern unsigned int iwram_3001ebc;

void OvlFunc_959_200cd0c(void) {
    int x;
    x = __GetFlag(0x226);
    if (x) {
        __Func_8092b94(0x2435);
        __ActorMessage(0x14, 0);
    } else {
        *(unsigned short *)(iwram_3001ebc + (0xbf << 1)) = x;
        __Func_8097608();
        OvlFunc_959_200cbfc();
    }
}

/* Cluster OvlFunc_940_2008454..OvlFunc_940_2008454 extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int);
extern void __UI_Sanctum(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);

void OvlFunc_940_2008454(void)
{
    unsigned char *p;

    p = __MapActor_GetActor(0);
    if ((unsigned int)(*(unsigned short *)(p + 6) - 0xa001) <= 0x3ffe) {
        __UI_Sanctum(0x15);
    } else {
        __Func_8092b94(0x266b);
        __ActorMessage(0x16, 0);
    }
}

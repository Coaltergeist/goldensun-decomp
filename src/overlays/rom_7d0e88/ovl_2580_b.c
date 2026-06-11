/* Cluster OvlFunc_947_200a694..OvlFunc_947_200a694 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_2580.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_2580_a.o and asm/overlays/rom_7d0e88/ovl_2580_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
/* OvlFunc_947_200a694  [asm/overlays/rom_7d0e88/ovl_2580.s]
* a = MapActor_GetActor(arg0); a->u8[0x22] = 2; a->u8[0x55] = 0;
 * a->fnptr@0x6c = OvlFunc_947_2009aa8. Result kept in r1, byte addresses
 * computed via mov+add #imm8 (offsets exceed the strb imm5 range).
 * Name audit: __Func_8092054 is now __MapActor_GetActor.
 */
extern unsigned int __MapActor_GetActor(int);
extern void OvlFunc_947_2009aa8(void);
struct Actor947 {
unsigned char pad0[0x22];
unsigned char f22;
unsigned char pad23[0x32];
unsigned char f55;
unsigned char pad56[0x16];
void (*fn6c)(void);
};

void OvlFunc_947_200a694(int arg0)
{
    struct Actor947 *p;

    p = (struct Actor947 *)__MapActor_GetActor(arg0);
    p->f22 = 2;
    p->f55 = 0;
    p->fn6c = OvlFunc_947_2009aa8;
}

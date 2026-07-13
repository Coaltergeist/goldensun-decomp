/* Cluster OvlFunc_973_2008768..OvlFunc_973_2008768 extracted from goldensun/asm/overlays/rom_7fc720/ovl_30_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fc720/ovl_30_c_a_c_c_c_a.o and asm/overlays/rom_7fc720/ovl_30_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7fc720/overlay.ld.
 */
extern unsigned char gOvl_02008920[];
extern unsigned char L93c[] __asm__(".L93c");
extern unsigned char L958[] __asm__(".L958");
extern void __UIDrawText(unsigned char *text, void *box, int x, int y);

void OvlFunc_973_2008768(void)
{
    unsigned char unused[32];
    void *pUVar1;

    pUVar1 = __CreateUIBox(0, 0xd, 0x1e, 6, 2);
    __UIDrawText(gOvl_02008920, pUVar1, 0, 0);
    __UIDrawText(L93c, pUVar1, 0, 8);
    __UIDrawText(L958, pUVar1, 0, 0x10);
}

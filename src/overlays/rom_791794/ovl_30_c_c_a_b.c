/* Cluster OvlFunc_897_2009084..OvlFunc_897_2009084 extracted from goldensun/asm/overlays/rom_791794/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_791794/ovl_30_c_c_a_a.o and asm/overlays/rom_791794/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_791794/overlay.ld.
 */
extern unsigned char L3b68[] __asm__(".L3b68");
extern unsigned char L3b00[] __asm__(".L3b00");
extern unsigned char L3b6c[] __asm__(".L3b6c");
extern unsigned char L3b70[] __asm__(".L3b70");
extern unsigned char L3ac0[] __asm__(".L3ac0");

void OvlFunc_897_2009084(void)
{
    unsigned int *r2;
    unsigned int *r3;
    unsigned int cnt;
    unsigned int r1;

    *(unsigned int *)L3b68 = 0x3f;
    *(unsigned int *)L3b00 = 0;
    *(unsigned int *)L3b6c = 0;
    *(unsigned int *)L3b70 = 0x78;
    r2 = (unsigned int *)L3ac0;
    cnt = 0;
    r1 = 0;
    do {
        cnt += 1;
        *r2++ = r1;
    } while (cnt <= 0xf);
}

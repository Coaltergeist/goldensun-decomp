/* Cluster OvlFunc_common1_14f4..OvlFunc_common1_14f4 extracted from goldensun/asm/overlays/common/common1_a.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_a_a.o and asm/overlays/common/common1_a_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern unsigned char L21[] __asm__(".L21");
extern unsigned char L48[] __asm__(".L48");
extern unsigned char L45[] __asm__(".L45");
extern unsigned char L38[] __asm__(".L38");
extern unsigned char L29[] __asm__(".L29");
extern unsigned char L42[] __asm__(".L42");
extern unsigned char L32[] __asm__(".L32");
extern unsigned char L17[] __asm__(".L17");
extern int OvlFunc_common1_1354;

void OvlFunc_common1_14f4(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    *(unsigned short *)L21 = (unsigned short)arg0;
    *(unsigned short *)L48 = (unsigned short)arg1;
    *(unsigned short *)L38 = *(unsigned short *)L45;
    *(unsigned short *)L42 = *(unsigned short *)L29;
    *(unsigned short *)L32 = (unsigned short)arg2;
    *(unsigned short *)L17 = 0;
    __StartTask(&OvlFunc_common1_1354, 0xc8 << 4);
}

/* Cluster Func_80f9538..Func_80f954c extracted from goldensun/asm/rom_f9000/rom_f9080.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_a.o and asm/rom_f9000/rom_f9080_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short gMusicVolume;
extern unsigned short gMusicVolumeDelta;

void Func_80f9538(unsigned short arg0, unsigned short arg1) {
    gMusicVolume = arg0;
    gMusicVolumeDelta = arg1;
}
extern unsigned char ewram_2003000;

unsigned int Func_80f954c(void) {
    return ewram_2003000;
}

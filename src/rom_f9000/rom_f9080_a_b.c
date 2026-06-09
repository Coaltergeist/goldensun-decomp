/* Cluster ChangeMusicSpeed..ChangeMusicSpeed extracted from goldensun/asm/rom_f9000/rom_f9080_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_a_a.o and asm/rom_f9000/rom_f9080_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short gMusicSpeed;
extern unsigned short gMusicSpeedDelta;

void ChangeMusicSpeed(unsigned short arg0, unsigned short arg1) {
    gMusicSpeed = arg0;
    gMusicSpeedDelta = arg1;
}

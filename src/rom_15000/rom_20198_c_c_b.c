/* Cluster Func_8020b00..Func_8020b00 extracted from goldensun/asm/rom_15000/rom_20198_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_a.o and asm/rom_15000/rom_20198_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void UploadSpriteGFX();
extern unsigned char Data_317e4[];

void Func_8020b00(int arg0)
{
    UploadSpriteGFX(arg0, 0x80, Data_317e4);
}

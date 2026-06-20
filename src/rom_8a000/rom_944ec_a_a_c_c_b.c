/* Cluster Func_8095348..Func_8095348 extracted from goldensun/asm/rom_8a000/rom_944ec_a_a_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_a_c_c_a.o and asm/rom_8a000/rom_944ec_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
void Func_8095348(int *p)
{
  int new_var;
  int *r4 = *((int **) (((char *) p) + 0x68));
  int v;
  v = *((int *) (((char *) p) + 8));
  v += ((*((int *) (((char *) r4) + 8))) - v) / 2;
  *((int *) (((char *) p) + 8)) = v;
  new_var = *((int *) (((char *) p) + 0xc));
  v = new_var;
  v += ((*((int *) (((char *) r4) + 0xc))) - v) / 2;
  *((int *) (((char *) p) + 0xc)) = v;
  v = *((int *) (((char *) p) + 0x10));
  v = v + (((*((int *) (((char *) r4) + 0x10))) - v) / 2);
  *((int *) (((char *) p) + 0x10)) = v;
}

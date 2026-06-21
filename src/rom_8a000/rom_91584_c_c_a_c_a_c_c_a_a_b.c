/* Cluster SetDestMap2..SetDestMap2 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
typedef struct
{
unsigned char _bytes[704];
} GlobalState;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;

void SetDestMap2(int arg0, int arg1)
{
  unsigned short *new_var;
  unsigned char *r2;
  unsigned char *r3;
  int new_var2;
  r2 = (unsigned char *) (*((unsigned int *) iwram_3001ebc));
  r3 = (unsigned char *) (&gState);
  *((unsigned short *) (r3 + (0xe0 * 2))) = arg0;
  *((unsigned short *) (r3 + (0xe1 * 2))) = arg1;
  new_var = (unsigned short *) (r2 + (0xb8 * 2));
  new_var2 = 0x3e7;
  *new_var = new_var2;
}

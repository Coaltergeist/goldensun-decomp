/* Cluster AddCoins..AddCoins extracted from goldensun/asm/rom_77000/rom_79460_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_a_a.o and asm/rom_77000/rom_79460_c_a_c.o in
 * goldensun/stage1.ld.
 */
typedef struct
{
unsigned char _bytes[704];
} GlobalState;
extern GlobalState gState;

int AddCoins(int amount)
{
  int r3;
  int r2;
  char *new_var;
  r2 = 0xf423f;
  new_var = (char *) (&gState);
  r3 = *((int *) (new_var + 0x10));
  r3 = r3 + amount;
  if (r3 > r2)
  {
    r3 = r2;
  }
  if (r3 < 0)
  {
    if (1)
    {
    }
    r3 = 0;
  }
  *((int *) (new_var + 0x10)) = r3;
  return r3;
}

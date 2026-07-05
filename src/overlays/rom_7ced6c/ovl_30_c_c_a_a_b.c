/* Cluster OvlFunc_946_2008e88..OvlFunc_946_2008e88 extracted from goldensun/asm/overlays/rom_7ced6c/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ced6c/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7ced6c/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7ced6c/overlay.ld.
 */
typedef struct
{
unsigned char _bytes[704];
} GlobalState;
extern GlobalState gState;

void OvlFunc_946_2008e88(void)
{
  unsigned char *new_var2;
  unsigned char *new_var;
  int idx;
  __CutsceneStart();
 new_var2 = (unsigned char *) (&gState); do { idx = *((short *) (((char *) (&gState)) + (0xe0 * 2))); __Func_8091f90(idx, 5); new_var = new_var2 + 0x22b; *new_var = 3; } while (0);
  __Func_8091eb0(0x54, 5);
  __CutsceneEnd();
}

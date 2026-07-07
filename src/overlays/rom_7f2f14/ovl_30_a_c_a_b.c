/* Cluster OvlFunc_968_2008910..OvlFunc_968_2008910 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_a_c_a_a.o and asm/overlays/rom_7f2f14/ovl_30_a_c_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
/* Cluster OvlFunc_968_2008910..OvlFunc_968_2008910 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_a_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_a_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void *__MapActor_GetActor(unsigned int a);
extern void __WaitFrames(unsigned int a);

void OvlFunc_968_2008910(unsigned int arg0, unsigned int arg1)
{
  int new_var;
  int *r6;
  int *r0p;
  int tmp;
  r6 = (int *) __MapActor_GetActor(arg0);
  r0p = (int *) __MapActor_GetActor(arg1);
  if (r6[4] <= r0p[4])
  {
    ;
    {
      int t2 = r6[2];
      r6[2] = r0p[2];
      r0p[2] = t2;
    }
    tmp = r0p[3];
    {
      int t2 = r6[3];
      r6[3] = tmp;
      r0p[3] = t2;
    }
    new_var = r0p[4];
    tmp = new_var;
    {
      int t2 = r6[4];
      r6[4] = tmp;
      r0p[4] = t2;
    }
    __WaitFrames(1);
  }
}

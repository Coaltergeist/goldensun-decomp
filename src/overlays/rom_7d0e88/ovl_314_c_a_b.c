/* Cluster OvlFunc_947_2009174..OvlFunc_947_2009174 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_314_c_a.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_314_c_a_a.o and asm/overlays/rom_7d0e88/ovl_314_c_a_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
void OvlFunc_947_2009174(unsigned int arg0)
{
  unsigned char *actor;
  int i;
  int v;
  actor = (unsigned char *) __MapActor_GetActor(arg0);
  actor[0x55] = 0;
  for (i = 0; i <= ((unsigned long long) 0x1f); i++)
  {
    __WaitFrames(1);
    v = (*((int *) (actor + 0x1c))) + ((int) 0xffffe667);
    *((int *) (actor + 0xc)) += (int) 0xffff3334;
    *((int *) (actor + 0x1c)) = v;
    if (v <= 0x1998)
    {
      *((int *) (actor + 0x1c)) = 0x1999;
      break;
    }
  }

}

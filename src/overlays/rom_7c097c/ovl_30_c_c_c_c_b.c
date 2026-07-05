/* Cluster OvlFunc_936_200b90c..OvlFunc_936_200b90c extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
void OvlFunc_936_200b90c(void)
{
  int *actor;
  short *r7;
  int r5;
  int t;
  unsigned int a;
  unsigned int b;
  actor = (int *) __MapActor_GetActor(0x1a);
  r7 = *((short **) (((char *) actor) + 0x50));
  r5 = __sin(*((int *) (((char *) actor) + 0x30))) << 1;
  if (r5 > 0)
  {
    r5 = -r5;
  }
  ;
  *((int *) (((char *) actor) + 8)) = (*((int *) (((char *) actor) + 0x38))) + (__cos(*((int *) (((char *) actor) + 0x30))) << 1);
  *((int *) (((char *) actor) + 0xc)) = (*((int *) (((char *) actor) + 0x3c))) + r5;
  t = __cos((*((int *) (((char *) actor) + 0x30))) + 0x8000);
  r7[15] = t >> 3;
  a = __Random();
  b = __Random();
  *((int *) (((char *) actor) + 0x30)) = ((*((int *) (((char *) actor) + 0x30))) + (((a << 9) >> 16) + ((b << 9) >> 16))) + 0x400;
}

/* Cluster OvlFunc_926_2008414..OvlFunc_926_2008414 extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_c_c_a_a.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_c_c_a_a_a.o and asm/overlays/rom_7b2078/ovl_314_c_c_a_a_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_926_2008414(void)
{
  unsigned short *base;
  int new_var;
  int a;
  unsigned short r3;
  unsigned long long t;
  unsigned short v;
  __CutsceneStart();
  new_var = 0;
  __MessageID(0x178a);
  if (__GetFlag(0x890) != new_var)
  {
    base = *((unsigned short **) iwram_3001ebc);
    v = base[0xec];
    r3 = v;
    r3 += 4;
    base[0xec] = r3;
  }
  __Func_8092c40(8, new_var);
  if (__Func_8091c7c(0, 0) == new_var)
  {
    t = 0x890;
    do
    {
      t = (unsigned long) t;
    }
    while (new_var);
    v = t;
    __SetFlag(v);
  }
  else
  {
    base = *((unsigned short **) iwram_3001ebc);
    r3 = base[0xec];
    r3 += 1;
    base[0xec] = r3;
  }
  t = 8;
  do
  {
    t = (unsigned long) t;
  }
  while (new_var);
  a = t;
  __ActorMessage(a, 0);
  __CutsceneEnd();
}

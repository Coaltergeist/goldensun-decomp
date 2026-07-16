/* Cluster OvlFunc_953_2008468..OvlFunc_953_2008468 extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_a_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_a_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
extern void OvlFunc_953_2009c48(unsigned int);
extern void __Func_80925cc(unsigned int, unsigned int);
extern void __ActorMessage(unsigned int, unsigned int);

void OvlFunc_953_2008468(void)
{
  int actor;
  unsigned short *p;
  unsigned short *p2;
  unsigned short v;

  actor = __MapActor_GetActor(0xd);
  __CutsceneStart();
  __MapActor_SetIdle(0xd);
  __Func_8092848(0xd, 0, 0x14);
  __MessageID(0x2114);
  OvlFunc_953_2009c48(0xd);
  __Func_80925cc(0xd, 1);
  __ActorMessage(0xd, 0);

  p = (unsigned short *)(actor + 0x64);
  v = 0xb4;
  v <<= 2;
  *p = v;

  p2 = (unsigned short *)(actor + 0x66);
  v = 0x70;
  *p2 = v;

  {
    unsigned short t;
    t = 0xd;
    do { t = (unsigned short) t; } while (0);
    __MapActor_SetBehavior(t, 2);
  }

  __CutsceneEnd();
}

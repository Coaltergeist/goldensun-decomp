// fakematch
/* Cluster OvlFunc_926_200a778..OvlFunc_926_200a778 extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a_a.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a_a_a.o and asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_943__0200c764[17];
extern unsigned char *iwram_3001ebc;

void OvlFunc_926_200a778(void)
{
  int actorAddr;
  int t;
  unsigned int w, z;

  __CutsceneStart();
  __PlaySound(0xbc);
  __Func_8010560(gScript_943__0200c764, 0x4d, 8);
  actorAddr = __MapActor_GetActor(0);
  *(unsigned char *)(actorAddr + 0x55) = 0;
  w = 0xcccc;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    z = 0x6666;
    __MapActor_SetSpeed(rq, w, z);
  }
  *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    __MapActor_SetAnim(rq, 2);
  }
  t = 0x10;
  {
    register int p1 __asm__("r1") = 0;
    __asm__ volatile ("" : : "r" (p1));
    t = -t;
    __MapActor_TravelBy(0, p1, t);
  }
  __CutsceneWait(0x10);
  __Func_8091e9c(2);
  __CutsceneEnd();
}

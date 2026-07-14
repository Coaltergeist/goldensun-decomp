extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_906_20084f4(int actor_id);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __SetFlag(int flag);

void OvlFunc_906_2008380(void)
{
  int new_var2;
  int val;
  int new_var;
  int actor;
  unsigned char *p;

  actor = (int) __MapActor_GetActor(8);
  val = *((int *) (actor + 8));
  if (val <= (0 - 1))
  {
    val += 0xfffff;
  }
  val >>= 20;
  if (val == 0x18)
  {
    OvlFunc_906_20084f4(8);
    p = __MapActor_GetActor(8);
    {
      register int loaded asm("r2");
      register int mask asm("r3");
      loaded = p[0x23];
      mask = 2;
      asm volatile("" : "+r"(loaded), "+r"(mask));
      mask |= loaded;
      p[0x23] = mask;
    }
    new_var2 = 0x11;
    new_var = 0x13;
    __Func_8010704(0x13, 0x4a, 9, 3, new_var, new_var2);
    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    __SetFlag(0x864);
  }
}

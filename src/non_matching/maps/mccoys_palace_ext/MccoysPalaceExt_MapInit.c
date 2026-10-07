extern void *__MapActor_GetActor(int);

extern void OvlFunc_910_200850c(void);

int MccoysPalaceExt_MapInit(void)
{
  unsigned char *actor;
  unsigned char *q;
  GlobalState *p;

  *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
  actor = (unsigned char *)__MapActor_GetActor(8);
  actor[0x23] = 0;
  q = *(unsigned char **)(actor + 0x50);
  q[9] = (q[9] & ~0xc) | 4;
  p = &gState;
  if (*(short *)(p->_bytes + 0x1c0) == (int)Lm910_actorsevent22) {
    OvlFunc_910_200850c();
  }
  return 0;
}

void OvlFunc_910_2008974(int id)
{
  unsigned char *actor;
  unsigned char *sub;
  unsigned char *p5c;
  unsigned char *icon;
  int zero;
  int one;
  int mask9;
  int mask5;
  int v9;
  int v5;

  actor = (unsigned char *)__MapActor_GetActor(id);
  sub = *(unsigned char **)(actor + 0x50);
  mask9 = ~0xc;
  mask5 = ~0x20;
  v9 = sub[9] & mask9;
  v9 = v9 | 4;
  v5 = sub[5] & mask5;
  sub[5] = v5;
  v9 = v9 & 0xf;
  sub[9] = v9;
  sub[0x27] = 0;
  zero = 0;
  __Actor_SetSpriteFlags(actor, zero);
  p5c = actor + 0x5c;
  *p5c = zero;
  actor[0x55] = zero;
  if (__GetFlag(0x109) == 0) {
    *(int *)(actor + 0xc) = *(int *)(actor + 0xc) + (0x80 << 14);
  }
  actor[0x23] = actor[0x23] & 0xfe;
  one = 1;
  actor[0x61] = one;
  icon = (unsigned char *)__galloc_iwram(0x11, 0xc1 << 3);
  __LoadItemIcon(0xb5);
  icon = icon + (0x80 << 3);
  __UploadSpriteGFX(sub[0x1c], 0x80, icon);
  __gfree(0x11);
  *(int *)(actor + 0x38) = *(int *)(actor + 8);
  {
    int tmp = *(int *)(actor + 0xc);
    *(int *)(actor + 0x30) = zero;
    *(int *)(actor + 0x3c) = tmp;
  }
  *p5c = one;
  *(int *)(actor + 0x6c) = (int)OvlFunc_910_200890c;
  actor[0x56] = zero;
}

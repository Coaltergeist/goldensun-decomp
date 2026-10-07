extern void __CopyMapTiles(int, int, int, int, int, int);

void OvlFunc_898_2009090(void)
{
  unsigned char *actor;
  unsigned char *sprite;
  int s1;
  int s2;

  actor = (unsigned char *) __MapActor_GetActor(0);
  sprite = *(unsigned char **)(actor + 0x50);
  __PlaySound(0xbc);
  __CopyMapTiles(0x2a, 0x21, 0x22, 0x10, 2, 2);
  __CopyMapTiles(0x2a, 0x23, 0x24, 0x10, 2, 2);
  __CutsceneWait(4);
  __CopyMapTiles(0x28, 0x21, 0x22, 0x10, 2, 2);
  __CopyMapTiles(0x28, 0x23, 0x24, 0x10, 2, 2);
  __CutsceneWait(4);
  s1 = 3;
  s2 = 0x10;
  __Func_8010704(0x21, 0x15, 2, 2, s1, s2);
  actor += 0x23;
  *actor = *actor & 0xfe;
  sprite[9] = sprite[9] | 0xc;
  OvlFunc_898_2008ef4(0x40, 0x88 << 1, 0xb);
}

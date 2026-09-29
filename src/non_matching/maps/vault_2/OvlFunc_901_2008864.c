void OvlFunc_901_2008864(void)
{
  int flag;

  ((struct Actor64 *) __MapActor_GetActor(0xf))->f64 |= 2;
  __CutsceneStart();
  __MessageID(0x1cc1);
  OvlFunc_901_20084b4(0xf);
  __CutsceneEnd();
  flag = 0;
  ((struct Actor64 *) __MapActor_GetActor(0xf))->f64 = flag;
}

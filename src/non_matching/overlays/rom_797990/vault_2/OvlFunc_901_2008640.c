extern void *__MapActor_GetActor(unsigned int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);

void OvlFunc_901_2008640(void)
{
  struct Actor640 *act;
  unsigned short *flags;
  short facing;
  int zero;

  act = (struct Actor640 *) __MapActor_GetActor(0xf);
  flags = &act->flags;
  *flags |= 2;
  facing = act->facing;
  zero = 0;
  __CutsceneStart();
  __MessageID(0x1cb4);
  __MapActor_SetAnim(0xf, 0);
  __MapActor_TurnToFaceActor(0xf, 0, 2);
  __ActorMessage_Wait(0xf, 0, 10);
  act->facing = facing;
  __WaitFrames(1);
  __CutsceneEnd();
  *flags = zero;
}

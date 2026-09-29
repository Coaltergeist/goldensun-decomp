extern unsigned char L51d8[] __asm__(".L51d8");

struct Effect926Data
{
  int flag;
  char pad0[12];
  int a;
  int b;
  short c;
  void *d;
  char pad1[8];
};

void OvlFunc_926_200c140(void)
{
  struct Actor *actor;
  unsigned int i;
  struct Effect926Data data;

  actor = __MapActor_GetActor(8);
  data.flag = 1;
  data.c = 0x119;
  data.d = L51d8;
  data.a = 0x38000;
  data.b = 0x18000;
  i = 0;
  do
  {
    __CutsceneWait(10);
    if ((i & 1) != 0)
    {
      __PlaySound(0x82);
    }
    i = i + 1;
    OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z - 0x180000, 0,
                         0x9999, 0, 0x360001, &data);
  } while (i < 8);
  __CutsceneWait(0x3c);
}

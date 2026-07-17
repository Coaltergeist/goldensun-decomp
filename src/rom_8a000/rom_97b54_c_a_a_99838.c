
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef struct Struct28
{
  u8 pad0[5];
  u8 unk5;
} Struct28;
typedef struct ActorSub
{
  u8 pad0[0x25];
  u8 unk25;
  u8 unk26;
  u8 pad1[1];
  Struct28 *unk28;
} ActorSub;
typedef struct Actor
{
  u8 pad0[0x50];
  ActorSub *unk50;
  u8 pad1[0x18];
  u32 unk6C;
} Actor;
typedef struct GState
{
  u8 pad0[0x1F4];
  s32 unk1F4;
  u8 pad1[0x54];
  u16 unk24C;
} GState;
typedef struct Iwram
{
  u8 pad0[0x17E];
  s16 unk17E;
} Iwram;
extern void *GetFieldActor(s32 actorId);
extern volatile unsigned int StartTask(void (*task)(void), int priority);
extern void WaitFrames(int frames);
extern void _Actor_SetAnim(void *actor, int anim);
extern void _PlaySound(int id);
extern void Func_8099678(void);
extern void Func_8099738(void);
extern GState gState;
extern Iwram *iwram_3001ebc;
void Field_Cloak(void)
{
  Iwram *sp4;
  Actor *actor;
  ActorSub *sub;
  Struct28 *s28;
  u32 i;
  sp4 = iwram_3001ebc;
  actor = GetFieldActor(gState.unk1F4);
  sub = actor->unk50;
  s28 = sub->unk28;
  _PlaySound(0x82);
  _Actor_SetAnim(actor, 0 & 0xFFFFFFFFu);
  actor->unk6C = 0;
  i = 0;
  do
  {
    s28->unk5 = 7;
    sub->unk25 = 1;
    sub->unk26 = 2;
    WaitFrames(2);
    sub->unk25 = 1;
    sub->unk26 = 0;
    WaitFrames(2);
    i++;
  }
  while (i <= 9);
  s28->unk5 = 0;
  sub->unk26 = 2;
  sub->unk25 = 1;
  StartTask(Func_8099678, 0xc8 << 4);
  gState.unk24C = 1;
  Func_8099678();
  if (sp4->unk17E == 0x2092)
  {
    Func_8099738();
    sp4->unk17E = 0;
  }
}

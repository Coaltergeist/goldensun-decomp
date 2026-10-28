#include "nonmatching.h"
#include "actor.h"
#include "sprite.h"

extern struct Actor *CreateParticleActor(int, int, int, int);

extern void Func_809a65c();
extern int cos(int);
extern int sin(int);
extern void Func_809a484(int, int, int, int, int, int, int, int *);

INCLUDE_ASM("asm/field/moves/carry/Func_8099d18.s");

INCLUDE_ASM("asm/field/moves/carry/Field_Carry_Target.s");

INCLUDE_ASM("asm/field/moves/carry/Field_Carry.s");

struct Actor *Func_809a3c4(int x, int y, int z, int dir)
{
    struct Actor *p;
    int s;

    _PlaySound(0x8a);
    p = CreateParticleActor(0xd7, x, y, z);
    if (p != 0) {
        p->scale.x = p->scale.y = 0x4000;
        p->accel = p->speed = 0x30000;
        s = 0;
        p->__unk5A = s;
        _Actor_SetAnim(p, 1);
        s = p->scale.x;
        if (s < 0x10000) {
            do {
                s += 0x800;
                p->scale.x = p->scale.y = s;
                p->facing += 0x2000;
                WaitFrames(1);
                s = p->scale.x;
            } while (s <= 0xffff);
        }
        p->facing = dir;
    }
    return p;
}

void Func_809a44c(void *arg0)
{
    unsigned char *base;
    int *r1;
    unsigned short *r0;

    base = (unsigned char *)arg0;
    *(int *)(base + 8) += *(int *)(base + 0x44);
    *(int *)(base + 0xc) += *(int *)(base + 0x48);
    *(int *)(base + 0x10) += *(int *)(base + 0x4c);
    *(int *)(base + 0x18) += *(int *)(base + 0x30);
    *(int *)(base + 0x1c) += *(int *)(base + 0x34);
    r1 = *(int **)(base + 0x50);
    r0 = (unsigned short *)(base + 0x64);
    *(short *)((char *)r1 + 0x1e) += *r0;
}

INCLUDE_ASM("asm/field/moves/carry/Func_809a484.s");

void Func_809a65c(struct Actor *a)
{
    int vx = a->bounce;
    int vz;
    a->pos.x += vx;
    a->pos.y += a->gravity;
    vz = a->__unk4C;
    a->pos.z += vz;
    a->bounce = vx - vx / 18;
    a->__unk4C = vz - vz / 16;
    a->scale.x += a->speed;
    a->scale.y += a->accel;
    a->sprite->rotation += (u16)a->waveCounter;
}

void Func_809a6b8(unsigned int arg0)
{
  int s[10];
  int a[3];
  unsigned int r7;
  int theta;
  int *p;
  s[1] = 0;
  s[9] = (int) Func_809a65c;
  s[2] = 0xcccc;
  s[3] = 0xcccc;
  r7 = 0;
  do
  {
    theta = r7 << 12;
    a[0] = (cos(theta) * 3) / 2;
    a[1] = 0;
    a[2] = sin(theta);
    p = (int *) arg0;
    Func_809a484(p[2], p[3], p[4], a[0], a[1], a[2], 0x1090001, s);
    r7++;
  }
  while (r7 <= 0x10);
}

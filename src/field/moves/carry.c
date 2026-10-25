#include "nonmatching.h"

extern void Func_809a65c();
extern int cos(int);
extern int sin(int);
extern void Func_809a484(int, int, int, int, int, int, int, int *);

INCLUDE_ASM("asm/field/moves/carry/Func_8099d18.s");

INCLUDE_ASM("asm/field/moves/carry/Field_Carry_Target.s");

INCLUDE_ASM("asm/field/moves/carry/Field_Carry.s");

unsigned char *Func_809a3c4(int x, int y, int z, int dir)
{
    unsigned char *p;
    int s;

    _PlaySound(0x8a);
    p = CreateParticleActor(0xd7, x, y, z);
    if (p != 0) {
        *(int *)(p + 0x18) = *(int *)(p + 0x1c) = 0x4000;
        *(int *)(p + 0x34) = *(int *)(p + 0x30) = 0x30000;
        s = 0;
        p[0x5a] = s;
        _Actor_SetAnim(p, 1);
        s = *(int *)(p + 0x18);
        if (s < 0x10000) {
            do {
                s += 0x800;
                *(int *)(p + 0x18) = *(int *)(p + 0x1c) = s;
                *(unsigned short *)(p + 6) += 0x2000;
                WaitFrames(1);
                s = *(int *)(p + 0x18);
            } while (s <= 0xffff);
        }
        *(short *)(p + 6) = dir;
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

void Func_809a65c(int *a)
{
    int vx = a[0x44 / 4];
    int vz;
    a[2] += vx;
    a[3] += a[0x48 / 4];
    vz = a[0x4c / 4];
    a[4] += vz;
    a[0x44 / 4] = vx - vx / 18;
    a[0x4c / 4] = vz - vz / 16;
    a[6] += a[0xc];
    a[7] += a[0xd];
    *(unsigned short *)(*(unsigned char **)(a + 0x14) + 0x1e) += *(unsigned short *)((unsigned char *)a + 0x64);
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

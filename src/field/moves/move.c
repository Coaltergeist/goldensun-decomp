#include "nonmatching.h"
#include "actor.h"

extern void _PlaySound(int);
extern void WaitFrames(int);
extern unsigned int Random(void);
extern struct Actor *CreateParticleActor(int, int, int, int);
extern void _Actor_SetScript(void *actor, void *script);
extern void Func_8096bec(struct Actor *, int, int);
extern void _DeleteActor(struct Actor *);
extern unsigned char gScript_0809f0d4[];

extern unsigned int gKeyHeld;
extern unsigned short gScript_0809f0f8[] __asm__("gScript_0809f0f8");

unsigned short Func_8097b54(void)
{
    return gScript_0809f0f8[(gKeyHeld >> 4) & 0xf];
}

extern int atan2(int, int);
extern void vec3_translate(int, int, int *);
extern void _Actor_SetAnim(struct Actor *, int);
extern unsigned char Data_9f0b0[];
void Func_8097b70(struct Actor *a)
{
    struct Actor *target = a->linkedActor;
    struct Actor *actor;
    int v[3];

    if (target != 0) {
        int dx = target->pos.x - a->pos.x;
        int dz = target->pos.z - a->pos.z;
        if (dx != 0 || dz != 0) {
            int delta = (short)(atan2(dz, dx) - a->facing);
            if (delta > 0x1000)
                delta = 0x1000;
            if (delta < -0x1000)
                delta = -0x1000;
            a->facing += delta;
        }
        a->__unk5A = 0;
    }
    v[0] = a->pos.x;
    v[1] = a->pos.y - (Random() << 4) + 0xfff80000;
    v[2] = a->pos.z;
    vec3_translate(Random() * 3 << 4, Random(), v);
    actor = CreateParticleActor(0x11d, v[0], v[1], v[2]);
    if (actor != 0) {
        actor->__unk55 = 2;
        actor->gravity = 0x1999;
        _Actor_SetAnim(actor, 0);
        actor->waitTimer = 0xc;
        _Actor_SetScript(actor, Data_9f0b0);
    }
}

INCLUDE_ASM("asm/field/moves/move/Field_Move_Target.s");

extern void vec3_translate(int, int, int *);
extern unsigned int Func_809ba34(unsigned char *arg0);
extern void Func_809bb34(unsigned char *arg0);
struct Obj97f80 {
    unsigned char pad0[0xc];
    int unk0c;
    int unk10;
    int unk14;
    int unk18;
    int pad1c;
    int unk20;
    int unk24;
    unsigned char pad28[0xa];
    unsigned short unk32;
    unsigned char pad34[0xc];
    signed char unk40;
    unsigned char pad41;
    unsigned char unk42;
};
void Func_97f80(struct Obj97f80 *arg0)
{
    int stk[3];

again:
    if (arg0->unk40 == 0) {
        stk[0] = arg0->unk14;
        stk[2] = arg0->unk18;
        {
            unsigned short ang = Random();
            vec3_translate(0x1e0000, ang, stk);
        }
        arg0->unk0c = stk[0];
        arg0->unk10 = stk[2];
        arg0->unk24 = 0x40000;
        arg0->unk20 = 0x40000;
        arg0->unk42 = 0;
        arg0->unk40++;
    } else if (arg0->unk40 == 1) {
        if (Func_809ba34((unsigned char *)arg0) == 0) {
            arg0->unk40++;
            goto again;
        }
    } else if (arg0->unk40 == 2) {
        arg0->unk0c = arg0->unk14;
        arg0->unk10 = arg0->unk18;
        arg0->unk32 = 0x400;
        arg0->unk42 = 1;
        arg0->unk40++;
    } else if (arg0->unk40 == 3) {
        if (Func_809ba34((unsigned char *)arg0) == 0)
            Func_809bb34((unsigned char *)arg0);
    }
}

INCLUDE_ASM("asm/field/moves/move/Field_Move.s");

extern void _Actor_SetAnim(struct Actor *, int);
struct Actor *Func_8098070(struct Actor *arg0)
{
    struct Actor *a;
    struct Actor *p;
    int angle = (arg0->facing + 0x2000) & 0xc000;
    int i;

    a = CreateParticleActor(0xd7, arg0->pos.x, arg0->pos.y + 0x100000, arg0->pos.z);
    if (a == 0)
        return 0;
    a->scale.y = 0x4000;
    a->scale.x = 0x4000;
    a->update = Func_8097b70;
    a->speed = 0x20000;
    a->accel = 0x20000;
    a->__unk55 = 0;
    _Actor_SetAnim(a, 3);
    Func_8096bec(a, 0x100000, angle);
    for (i = 7; i >= 0; i--) {
        p = CreateParticleActor(0x11d, arg0->pos.x, arg0->pos.y + 0x100000, arg0->pos.z);
        if (p != 0) {
            int r;
            int q;
            _Actor_SetScript(p, gScript_0809f0d4);
            p->speed = Random() + (0x80 << 9);
            p->accel = 0x80 << 9;
            p->__unk55 = 2;
            p->gravity = 0x51e;
            r = Random();
            r -= Random();
            p->motion.y = r;
            q = Random() * 3 * 8 + (0x80 << 12);
            {
                unsigned int s = Random();
                s -= Random();
                s >>= 3;
                Func_8096bec(p, q, s + arg0->facing);
            }
        }
    }
    _PlaySound(0x8a);
    return a;
}

extern void _Actor_WaitMovement(void *);
void Func_8098184(int *a)
{
    int v;

    if (a != 0) {
        v = a[6];
        if (v <= 0xffff) {
            int t;
            do {
                t = v + 0x1000;
                v = t;
            } while (t <= 0xffff);
            a[6] = t;
            a[7] = t;
        }
        _Actor_WaitMovement(a);
    }
}

void Func_80981b0(struct Actor *arg0)
{
    struct Actor *actor;
    int i;

    _PlaySound(0x9a);
    for (i = 0x1e; i >= 0; i--) {
        arg0->pos.y += 0x80 << 9;
        arg0->facing += 0x80 << 6;
        arg0->scale.x += 0xfffff800;
        arg0->scale.y += 0xfffff800;
        WaitFrames(1);
    }

    for (i = 7; i >= 0; i--) {
        actor = CreateParticleActor(0x11d, arg0->pos.x, arg0->pos.y, arg0->pos.z);
        if (actor != 0) {
            int r;
            int q;
            _Actor_SetScript(actor, gScript_0809f0d4);
            actor->speed = Random() + (0x80 << 9);
            actor->accel = 0x80 << 9;
            actor->__unk55 = 2;
            actor->gravity = 0xa3d;
            r = Random();
            r -= Random();
            actor->motion.y = r;
            q = Random() * 3 * 8 + (0x80 << 12);
            Func_8096bec(actor, q, Random());
        }
    }

    _PlaySound(0x83);
    _DeleteActor(arg0);
}

INCLUDE_ASM("asm/field/moves/move/rodata.s");

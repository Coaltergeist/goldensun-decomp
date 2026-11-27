#include "nonmatching.h"
#include "actor.h"
extern void _PlaySound(int);
extern unsigned int Random(void);
extern struct Actor *CreateParticleActor(int, int, int, int);
extern void _Actor_SetScript(void *actor, void *script);
extern void Func_8096bec(struct Actor *, int, int);
extern unsigned char Data_9f0b0[];
extern unsigned char gScript_0809f0d4[];

extern void Field_Force(void);

extern void vec3_translate(int, int, int *);
extern unsigned int Func_809ba34(unsigned char *arg0);
extern void Func_809bb34(unsigned char *arg0);
extern void Func_80974d8(int *vec);
extern unsigned char *iwram_3001f30;
struct Obj8098b10 {
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
void Func_8098b10(struct Obj8098b10 *arg0)
{
    unsigned char *base = iwram_3001f30;
    int stk[3];

again:
    if (arg0->unk40 == 0) {
        stk[0] = arg0->unk14;
        stk[2] = arg0->unk18;
        {
            unsigned short ang = Random();
            vec3_translate(0x190000, ang, stk);
        }
        arg0->unk0c = stk[0];
        arg0->unk10 = stk[2];
        arg0->unk24 = 0x30000;
        arg0->unk20 = 0x30000;
        arg0->unk42 = 0;
        arg0->unk40++;
    } else if (arg0->unk40 == 1) {
        if (Func_809ba34((unsigned char *)arg0) == 0) {
            arg0->unk40++;
            goto again;
        }
    } else if (arg0->unk40 == 2) {
        struct Actor *actor = *(struct Actor **)(base + 0x10);
        stk[0] = actor->pos.x;
        stk[1] = actor->pos.y + 0x100000;
        stk[2] = actor->pos.z;
        vec3_translate(0x80000, *(int *)base, stk);
        Func_80974d8(stk);
        vec3_translate(0x40000, Random(), stk);
        arg0->unk0c = stk[0];
        arg0->unk10 = stk[2];
        arg0->unk32 = 0x800;
        arg0->unk42 = 1;
        arg0->unk40++;
    } else if (arg0->unk40 == 3) {
        if (Func_809ba34((unsigned char *)arg0) == 0)
            Func_809bb34((unsigned char *)arg0);
    }
}

int Func_8098c08(struct Actor *arg0)
{
    int v[3];
    struct Actor *actor;
    int i;

    _PlaySound(0x86);
    v[0] = arg0->pos.x;
    v[1] = arg0->pos.y;
    v[2] = arg0->pos.z;
    {
        struct Actor *a = CreateParticleActor(0x11b, v[0], v[1] - 0x200000, v[2]);
        if (a != 0) {
            a->__unk55 = 0;
            a->waitTimer = 0x14;
            _Actor_SetScript(a, Data_9f0b0);
        }
    }
    for (i = 0; i < 12; i++) {
        actor = CreateParticleActor(0x11d, v[0], v[1], v[2]);
        if (actor != 0) {
            int q;
            _Actor_SetScript(actor, gScript_0809f0d4);
            actor->speed = Random() + (0x80 << 9);
            actor->accel = 0x80 << 9;
            actor->__unk55 = 0;
            q = Random() * 3 * 8 + (0x80 << 12);
            Func_8096bec(actor, q, Random());
        }
    }
    return 0;
}

void Field_Force_Target(void) {
    Field_Force();
}

INCLUDE_ASM("asm/field/moves/force/Field_Force.s");

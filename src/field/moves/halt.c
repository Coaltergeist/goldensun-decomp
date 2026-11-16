#include "nonmatching.h"
#include "actor.h"

extern unsigned char **iwram_3001f30;
extern void Field_Halt(void);
extern unsigned int MapActor_GetName(unsigned int actorID);

INCLUDE_ASM("asm/field/moves/halt/Func_809aa98.s");

void Field_Halt_Target(void) {
    unsigned char *p;

    p = iwram_3001f30[5];
    p[0x5b] = 1;
    Field_Halt();
}

extern void *CreateParticleActor(unsigned short spriteID, int x, int y, int z);
extern void _Actor_SetAnim(void *actor, int anim);
extern void Func_8097384(void);
extern void WaitFrames(unsigned int nframes);
extern void _PlaySound(unsigned int id);
extern void Func_80974d8(vec3_t *vec);
extern unsigned int Random(void);
extern void vec3_translate(int mag, unsigned int angle, vec3_t *vec);
extern void Func_809ba90(void *arg0, int arg1, int arg2, int arg3);
extern void Func_809aa98(void);
extern void Func_809ba7c(void *arg0, void *arg1);
extern void _Sprite_SetColorswap(void *sprite, int color);
extern void _DeleteActor(void *actor);
extern void Func_809748c(void);

static inline int HaltLerpEnd(int steps)
{
    return steps + 1;
}

static inline fx32 HaltLerp(fx32 a, fx32 b, int step, int steps)
{
    return a + (b - a) * step / steps;
}

struct HaltParticle {
    void *sprite;
    u8 pad4[0x44];
};

struct HaltMoveState {
    u8 pad0[0x04];
    vec3_t targetPos;
    struct Actor *caster;
    struct Actor *target;
    u8 pad18[0x40];
    struct HaltParticle particles[16];
};

void Field_Halt(void)
{
    struct HaltMoveState *obj;
    struct Actor *caster;
    struct Actor *particle;
    struct HaltParticle *p;
    vec3_t buf;
    vec3_t startPos;
    vec3_t endPos;
    int n;
    int i;
    int scale;

    obj = (struct HaltMoveState *)iwram_3001f30;
    caster = obj->caster;
    obj->targetPos.y = caster->pos.y;

    particle = CreateParticleActor(0xfa, 0, 0, 0);
    n = 0;
    _Actor_SetAnim(particle, 0);
    if (particle != NULL) {
        Func_8097384();

        startPos.x = caster->pos.x;
        startPos.y = caster->pos.y + 0x100000;
        startPos.z = caster->pos.z;

        endPos.x = obj->targetPos.x;
        endPos.y = obj->targetPos.y + 0x80000;
        endPos.z = obj->targetPos.z;

        for (; n < HaltLerpEnd(10); n++) {
            particle->pos.x = startPos.x + (endPos.x - startPos.x) * n / 10;
            particle->pos.y = startPos.y + (endPos.y - startPos.y) * n / 10;
            particle->pos.z = startPos.z + (endPos.z - startPos.z) * n / 10;
            scale = HaltLerp(0x4000, 0x10000, n, 10);
            particle->scale.x = scale;
            particle->scale.y = scale;
            WaitFrames(1);
        }

        WaitFrames(5);
        _Actor_SetAnim(particle, 1);
        _PlaySound(0x6c);
        WaitFrames(10);
        _PlaySound(0x6c);
        WaitFrames(10);
        _PlaySound(0x6c);
        WaitFrames(10);
        _PlaySound(0x6d);

        p = obj->particles;
        for (i = 0; i < 16; i++, p++) {
            buf.x = particle->pos.x;
            buf.y = particle->pos.y + 0x80000;
            buf.z = particle->pos.z;
            Func_80974d8(&buf);
            vec3_translate(0x40000, Random(), &buf);
            Func_809ba90(p, 0x11d, buf.x, buf.z);
            Func_809ba7c(p, Func_809aa98);
            _Sprite_SetColorswap(p->sprite, 7);
        }

        buf.x = particle->pos.x;
        buf.y = particle->pos.y + 0x80000;
        buf.z = particle->pos.z;
        WaitFrames(8);
        _DeleteActor(particle);
        WaitFrames(4);
        WaitFrames(0x1e);
        Func_809748c();
    }
}

extern unsigned int Random(void);
extern void _Actor_SetColorswap(void *actor, int colorswap);
extern signed char gScript_0809f160[8];

void Func_809ad70(void *actor) {
    _Actor_SetColorswap(actor, gScript_0809f160[(Random() << 3) >> 16]);
}

extern unsigned char *GetFieldActor(int);
extern void _Actor_SetAnimSpeed(void *, int);
extern unsigned char gState[];
void Func_809ad90(int id)
{
    struct Actor *a = (struct Actor *)GetFieldActor(id);
    if (a != 0) {
        unsigned char *s = gState;
        unsigned char *c;
        *(int *)(s + 0x250) = (int)a->update;
        c = s + 0x249;
        *c = 0;
        if (a->visible == 1) {
            unsigned char *g = *(unsigned char **)((unsigned char *)a->sprite + 0x28);
            if (g != 0)
                *c = g[5];
        }
        a->update = (actorfun_t)Func_809ad70;
        a->stop = 1;
        _Actor_SetAnimSpeed(a, 0);
    }
}

extern unsigned char *GetFieldActor(int);
extern void _Actor_SetAnimSpeed(void *, int);
extern unsigned char gState[];
void Func_809ade8(int id)
{
    struct Actor *a = (struct Actor *)GetFieldActor(id);
    if (a != 0) {
        if (a->update == (actorfun_t)Func_809ad70) {
            unsigned char *s = gState;
            int *p = (int *)(s + 0x250);
            a->update = (actorfun_t)*p;
            *p = 0;
            _Actor_SetColorswap(a, (signed char)s[0x249]);
        }
        a->stop = 0;
        _Actor_SetAnimSpeed(a, 0x10);
    }
}

unsigned int Func_809ae3c(unsigned int arg0)
{
	unsigned int r5;
	r5 = arg0;
	if (MapActor_GetName(r5) == 0xff)
		return -1;
	return r5;
}

INCLUDE_ASM("asm/field/moves/halt/rodata.s");

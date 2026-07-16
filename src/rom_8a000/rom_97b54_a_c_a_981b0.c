typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;

typedef struct Actor {
    u8 pad0[6];
    u16 unk6;
    s32 x;
    s32 y;
    s32 z;
    u8 pad14[4];
    s32 unk18;
    s32 unk1c;
    u8 pad20[8];
    s32 unk28;
    u8 pad2c[4];
    s32 unk30;
    s32 unk34;
    u8 pad38[0x10];
    s32 unk48;
    u8 pad4c[9];
    u8 unk55;
} Actor;

extern void _PlaySound(s32);
extern void WaitFrames(s32);
extern Actor *CreateParticleActor(s32, s32, s32, s32);
extern void _Actor_SetScript(Actor *, const u8 *);
extern s32 Random(void);
extern void Func_8096bec(Actor *, s32, s32);
extern void _DeleteActor(Actor *);
extern const u8 gScript_0809f0d4[];

void Func_80981b0(Actor *actor)
{
    s32 count;
    Actor *particle;
    s32 random;
    s32 difference;
    s32 magnitude;
    s32 base;

    _PlaySound(0x9a);
    count = 0x1e;
    do {
        actor->y += 0x10000;
        actor->unk6 += 0x2000;
        actor->unk18 += -0x800;
        actor->unk1c += -0x800;
        WaitFrames(1);
        count--;
    } while (count >= 0);

    base = 0x80;
    count = 7;
    base <<= 9;
    do {
        particle = CreateParticleActor(0x11d, actor->x, actor->y, actor->z);
        if (particle != 0) {
            _Actor_SetScript(particle, gScript_0809f0d4);
            random = Random();
            particle->unk34 = base;
            particle->unk30 = random + base;
            particle->unk55 = 2;
            particle->unk48 = 0xa3d;
            difference = Random();
            difference -= Random();
            particle->unk28 = difference;
            magnitude = Random() * 0x18 + 0x80000;
            Func_8096bec(particle, magnitude, Random());
        }
        count--;
    } while (count >= 0);
    _PlaySound(0x83);
    _DeleteActor(actor);
}

struct EffectData924b {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    void *unk1c;
    int unk20;
    int unk24;
};

extern unsigned char Lm924_5e70[] __asm__(".Lm924_5e70");

void OvlFunc_924_200ae6c(int arg0)
{
    extern void __Func_8092950(int, int);
    extern void __WaitFrames(int);
    extern void OvlFunc_924_200bbd4(int, int, int);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

    struct EffectData924b data;
    struct Actor *actor;
    unsigned int i;
    int x;
    int y;
    int r;

    actor = (struct Actor *)__MapActor_GetActor(arg0);
    actor->__unk55 = 0;
    __Actor_SetSpriteFlags((unsigned char *)actor, 0);
    __Func_8092950(arg0, 0x100);
    __PlaySound(0xdd);

    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x11e;
    data.unk1c = Lm924_5e70;

    for (i = 0; i <= 0x2f; i++) {
        if (i <= 0x1f)
            OvlFunc_924_200bbd4(actor->pos.x, actor->pos.y, actor->pos.z);
        if (i & 1) {
            __PlaySound(0xf6);
            x = actor->pos.x + (((__Random() * 24) >> 16) << 16) - 0xc0000;
            y = actor->pos.y + (((__Random() * 32) >> 16) << 16) - 0x100000;
            r = (((__Random() * 4) >> 16) << 15) + 0x8000;
            OvlFunc_common0_10c(x, y, actor->pos.z, 0, r, 0, 0x330000, &data);
        }
        actor->pos.y += i * 0x1999;
        actor->prevPos.y = actor->pos.y;
        __WaitFrames(2);
    }
}
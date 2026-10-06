extern unsigned char Lm928_1740[] __asm__(".Lm928_1740");

extern unsigned char iwram_3001e40[];

struct EffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_928_2008370(void)
{
    unsigned char *actor;
    struct EffectData data;

    actor = (unsigned char *)__MapActor_GetActor(0xe);
    if ((*(unsigned int *)iwram_3001e40 & 3) == 0) {
        data.unk0 = 1;
        data.unk4 = 9;
        data.unk18 = 0xa9;
        data.unk1c = (int)Lm928_1740;
        OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc),
            *(int *)(actor + 0x10) - 0x10000, 0, 0xffff0000, 0xffff0000,
            0xcc << 14, &data);
    }
}

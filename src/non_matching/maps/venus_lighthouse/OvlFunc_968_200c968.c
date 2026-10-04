struct Struct_968_200c968 {
    unsigned int unk0;
    unsigned int unk4;
    unsigned int pad8[4];
    unsigned short unk18;
    void *unk1c;
    unsigned int pad20[2];
};

extern unsigned char iwram_3001e40[];
extern unsigned char Lm968_52cc[] __asm__(".Lm968_52cc");
extern unsigned int __Random(void);
extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, void *);

int OvlFunc_968_200c968(struct Actor *actor)
{
    struct Struct_968_200c968 sp10;
    unsigned int flag;
    int x;
    int y;
    int z;

    sp10.unk0 = 1;
    sp10.unk4 = 5;
    sp10.unk18 = 0x8f << 1;
    sp10.unk1c = Lm968_52cc;

    flag = *(unsigned int *)iwram_3001e40 & 3;
    if (flag != 0) {
        return 0;
    }

    if ((*(unsigned int *)iwram_3001e40 & 7) == 0) {
        API_PlaySound(0xf6);
    }

    x = actor->pos.x + ((((__Random() * 49) >> 16) - 24) << 16);
    y = actor->pos.y + ((((__Random() * 49) >> 16) - 24) << 16);
    z = actor->pos.z + ((((__Random() * 49) >> 16) - 24) << 16);

    OvlFunc_968_2008118(x, y, z, 0,
                        ((((unsigned int)__Random() * 4) >> 16) << 15) + 0x8000,
                        flag, 0x330000, &sp10);

    return 0;
}

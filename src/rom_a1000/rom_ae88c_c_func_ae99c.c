extern unsigned char iwram_3001f2c[];
extern int _Func_801eadc(int slot, unsigned int flags, unsigned int x,
                         unsigned int y, unsigned int z);

struct SpriteHandle {
    unsigned char unused0[4];
    unsigned char unk4;
    unsigned char unk5;
    unsigned char unused6[6];
    unsigned short unkc;
};

int Func_80ae99c(unsigned int x, unsigned int y, unsigned int z, int part)
{
    register unsigned int savedPart asm("r5") = part;
    unsigned char *base;
    int slot;
    struct SpriteHandle *result;
    register unsigned int savedX asm("r4") = x;
    register unsigned int savedY asm("r6") = y;

    base = *(unsigned char **)iwram_3001f2c;

    if (savedPart == 0) {
        slot = *(unsigned short *)(base + 0x392);
    } else {
        slot = *(unsigned short *)(base + 0xe5 * 4);
    }

    result = (struct SpriteHandle *)_Func_801eadc(slot, 0x40000000, savedX, savedY, z);
    if (result == 0)
        return -1;

    result->unk4 = 0;
    result->unkc = 0;
    result->unk5 = 1;
    return 1;
}

struct SummonSprite {
    unsigned char unk00[9];
    unsigned char unk09_0 : 2;
    unsigned char unk09_2 : 2;
    unsigned char unk09_4 : 4;
    unsigned char unk0a[0x1c];
    unsigned char unk26;
};

extern unsigned char iwram_3001eec[];
extern struct SummonSprite *_CreateSprite(void *spriteData);
extern void _Sprite_SetAnim(struct SummonSprite *sprite, int animation);

#define SUMMON_SPRITE_SLOT(base, offset) \
    (*(struct SummonSprite **)((offset) + (unsigned int)(base)))

void CreateSummonSprite(int count, void *spriteData, int variant) {
    unsigned char *base = *(unsigned char **)iwram_3001eec;
    int i;
    unsigned int offset;

    i = 0;
    if (count != 0) {
        offset = 0x77d8;
        do {
            SUMMON_SPRITE_SLOT(base, offset) = _CreateSprite(spriteData);
            if (SUMMON_SPRITE_SLOT(base, offset) != 0) {
                SUMMON_SPRITE_SLOT(base, offset)->unk26 = 0;
                _Sprite_SetAnim(SUMMON_SPRITE_SLOT(base, offset), i);
                SUMMON_SPRITE_SLOT(base, offset)->unk09_2 = variant;
            }
            i++;
            offset += 4;
        } while (i != count);
    }
}

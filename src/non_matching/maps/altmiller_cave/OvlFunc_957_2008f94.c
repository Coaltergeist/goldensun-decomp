struct Struct_3f6c {
    s16 unk0;
    s16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unk10;
};

extern struct Struct_3f6c *L3f6c __asm__(".Lm957_3f6c");
extern signed char ewram_2001002[];
extern int _divsi3_RAM(int, int);
extern void OvlFunc_957_2008ee0(struct Actor *);
extern void __PlaySound(int);

void OvlFunc_957_2008f94(void)
{
    int run = 1;

    switch (L3f6c->unk0) {
    case 0:
        L3f6c->unk8 += 0x10;
        if ((u32)(L3f6c->unk8 << 16) > 0x0bff0000) {
            L3f6c->unk0++;
            L3f6c->unk2 = 0;
        }
        break;
    case 1:
        if (L3f6c->unk2 == 30) {
            L3f6c->unk0++;
        }
        break;
    case 2:
        L3f6c->unk8 += 0xfff8;
        if ((u32)(L3f6c->unk8 << 16) <= 0x02ff0000) {
            L3f6c->unk0++;
        }
        break;
    case 3: {
        signed char actorIdx = ewram_2001002[0];
        int div = _divsi3_RAM(actorIdx << 16, 5);

        if ((u32)(((L3f6c->unk6 - div) << 16) + 0xc2ff0000) <= 0x05fe0000) {
            struct Actor *actor;
            L3f6c->unk6 = div + 0x4000;
            L3f6c->unk0 = 99;
            L3f6c->unk8 = 0;
            actor = (struct Actor *)__MapActor_GetActor(actorIdx + 11);
            actor->update = (actorfun_t *)OvlFunc_957_2008ee0;
        }
        break;
    }
    case 99:
        run = 0;
        break;
    }

    if (run) {
        L3f6c->unk6 += L3f6c->unk8;
        OvlFunc_957_2008f6c(L3f6c->unk6);
        L3f6c->unk10 += L3f6c->unk8;
        if ((u32)(L3f6c->unk10 << 16) > 0x30000000) {
            L3f6c->unk10 = 0;
            __PlaySound(0x87);
        }
    }
    L3f6c->unk2++;
}
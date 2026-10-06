extern unsigned int iwram_3001e40;
extern void __Func_8091ff0(int);
extern void __PlaySound(int);
extern void OvlFunc_936_200b864(int, int, int);

void OvlFunc_936_200b768(void)
{
    struct Actor *actor8;
    struct Actor *actor9;

    actor8 = (struct Actor *)__MapActor_GetActor(8);
    actor9 = (struct Actor *)__MapActor_GetActor(9);

    if ((u32)(*(short *)((char *)actor8 + 0xa) - 0x17d) <= 12 && *(short *)((char *)actor8 + 0x12) > 0x309) {
        actor8->sprite->oam.priority = ((struct Actor *)__MapActor_GetActor(0))->sprite->oam.priority;
    } else if (!__GetFlag(0x302) && *(short *)((char *)actor8 + 0xa) <= 0xf5 && !(iwram_3001e40 & 1)) {
        if (!__GetFlag(0x202)) {
            __Func_8091ff0(-1);
            __PlaySound(0xe6);
            __SetFlag(0x202);
        }
        OvlFunc_936_200b864(actor8->pos.x, actor8->pos.y, actor8->pos.z);
    }

    if (!__GetFlag(0x303) && *(short *)((char *)actor9 + 0xa) <= 0x2c5 && !(iwram_3001e40 & 1)) {
        if (!__GetFlag(0x203)) {
            __Func_8091ff0(-1);
            __PlaySound(0xe6);
            __SetFlag(0x203);
        }
        OvlFunc_936_200b864(actor9->pos.x, actor9->pos.y, actor9->pos.z);
    }
}

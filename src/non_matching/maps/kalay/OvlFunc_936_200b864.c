extern void __Func_80929d8(struct Actor *, int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern void __Actor_SetAnim(struct Actor *, int);
extern unsigned char gScript_936__0200d120[];

void OvlFunc_936_200b864(int x, int y, int z)
{
    struct Actor *actor;

    actor = (struct Actor *)__CreateActor(
        0xde,
        x - 0x80000,
        y + (((u32)__Random() * 8 >> 16) << 16) + 0x100000,
        z
    );
    if (actor != 0) {
        actor->__unk55 = 0;
        actor->sprite->oam.priority = 2;
        __Func_80929d8(actor, 9);
        __Actor_SetSpriteFlags(actor, 0);
        actor->motion.x = (((u32)__Random() * 2 >> 16) - 1) << 16;
        actor->motion.y = (((u32)__Random() * 6 >> 16) - 3) << 16;
        actor->waveCounter = 20;
        actor->__unk61 = 1;
        __Actor_SetAnim(actor, 1);
        __Actor_SetScript(actor, gScript_936__0200d120);
    }
}

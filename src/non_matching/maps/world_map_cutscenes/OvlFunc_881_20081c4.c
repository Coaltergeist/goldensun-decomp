int Func_8000888(int, int) __attribute__((long_call));

void OvlFunc_881_20081c4(struct Actor *actor)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int, unsigned int);
    extern int __sin(int);
    extern void __vec3_translate(int, int, void *);

    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap((unsigned int)actor, 10);
    } else {
        __Actor_SetColorswap((unsigned int)actor, 7);
    }

    if ((s16)actor->__unk66 == 0) {
        short *wc = &actor->waveCounter;

        actor->pos.x = 0x15d00000;
        actor->pos.y = Func_8000888(__sin(*wc << 3), 0x40000) + 0x100000;
        actor->pos.z = 0x5300000;
        __vec3_translate(0x100000, *wc, &actor->pos);
        actor->facing = *wc + 0x4000;
        *wc += 0x400;
    }
}

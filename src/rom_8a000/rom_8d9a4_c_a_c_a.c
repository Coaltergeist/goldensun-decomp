extern unsigned char iwram_3001ebc[];
extern int GetMapActorIndex(void);
extern void WaitFrames(int frames);
extern void _Actor_SetAnim(void *actor, int animation);
extern void _PlaySound(int sound);
extern void _Actor_SetSpriteFlags(void *actor, int flags);

void Func_808ec8c(void) {
    int index = GetMapActorIndex();
    register int invalid asm("r2") = 1;

    invalid = -invalid;
    asm volatile("" : "+r"(invalid));
    if (index != invalid) {
        register unsigned char *base asm("r3") = *(unsigned char **)iwram_3001ebc;
        register int offset asm("r2");
        register unsigned char *actor asm("r5");

        asm volatile("" : "+r"(base));
        offset = index << 3;
        asm volatile("" : "+r"(base), "+r"(offset));
        base += offset;
        asm volatile("" : "+r"(base));
        offset = 0x8e;
        asm volatile("" : "+r"(base), "+r"(offset));
        offset <<= 1;
        asm volatile("" : "+r"(base), "+r"(offset));
        base += offset;
        asm volatile("" : "+r"(base));
        actor = *(unsigned char **)base;
        asm volatile("" : "+r"(actor));
        WaitFrames(0x12);
        if (actor != 0)
            _Actor_SetAnim(actor, 7);
        _PlaySound(0x92);
        if (actor != 0) {
            *(int *)(actor + 0x28) = 0x80000;
            _Actor_SetSpriteFlags(actor, 1);
        }
    }
}

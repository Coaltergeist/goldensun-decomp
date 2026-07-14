extern unsigned char gState[];
extern int GetFieldActor(int actorID);
extern void _Actor_TravelTo(unsigned char *actor, int x, int y, int z);
extern void WaitFrames(int frames);
extern void _Actor_SetAnim(unsigned char *actor, int anim);
extern void _Actor_SetScript(unsigned char *actor, unsigned char *script);
extern unsigned char L9e75c[] __asm__(".L9e75c");

void Func_808f0d8(unsigned char *self)
{
    unsigned char *actor;
    register int result asm("r0");

    if (self == 0) {
        return;
    }

    {
        register unsigned char *base asm("r3") = gState;
        register int offset asm("r2") = 0xfa;
        offset = offset << 1;
        base = base + offset;
        result = GetFieldActor(*(int *)base);
    }

    *(int *)(self + 0x34) = 0x10000;
    {
        register int val asm("r3") = 0x80;
        register unsigned char *addr asm("r2");

        val = val << 10;
        addr = self;
        *(int *)(self + 0x30) = val;
        addr = addr + 0x55;
        asm volatile("" : "+r"(addr));
        asm volatile("" ::: "r3");
        *addr = 0;
    }
    asm volatile("" : "+r"(result));
    actor = (unsigned char *)result;

    {
        register int r2v asm("r2") = *(int *)(actor + 0xc);
        register int r3v asm("r3") = 0x90;
        register int r1v asm("r1");
        register unsigned char *r0v asm("r0");

        r3v = r3v << 14;
        r2v = r2v + r3v;
        r1v = *(int *)(actor + 8);
        r3v = *(int *)(actor + 0x10);
        r0v = self;
        _Actor_TravelTo(r0v, r1v, r2v, r3v);
    }
    WaitFrames(3);
    _Actor_SetAnim(actor, 0x1c);
    _Actor_SetScript(self, L9e75c);
    {
        register int facing asm("r3") = 0x80;
        facing = facing << 7;
        *(short *)(actor + 6) = (short)facing;
    }
}

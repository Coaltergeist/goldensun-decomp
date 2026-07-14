extern void __PlaySound(int sound);
extern void __CopyMapTiles(int source_x, int source_y, int width, int height,
                           int arg4, int arg5);
extern void __WaitFrames(int frames);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092b08(int actor, int arg1);
extern void OvlFunc_884_2008714(int actor);

void OvlFunc_884_2008780(void)
{
    register int r0v asm("r0");
    register int r1v asm("r1");
    register int r2v asm("r2");
    register int r3v asm("r3");
    register int r5v asm("r5");

    __PlaySound(0xbc);

    asm volatile("" ::: "r5");
    r5v = 2;
    asm volatile("" : "+r"(r5v));
    r1v = 0x3f;
    asm volatile("" : "+r"(r1v), "+r"(r5v));
    r2v = 0x33;
    asm volatile("" : "+r"(r1v), "+r"(r2v), "+r"(r5v));
    r3v = 8;
    asm volatile("" : "+r"(r1v), "+r"(r2v), "+r"(r3v), "+r"(r5v));
    r0v = 0;
    asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v), "+r"(r3v), "+r"(r5v));
    __CopyMapTiles(r0v, r1v, r2v, r3v, r5v, r5v);

    r0v = 0xa;
    asm volatile("" : "+r"(r0v), "+r"(r5v));
    __WaitFrames(r0v);

    r3v = 8;
    asm volatile("" : "+r"(r3v), "+r"(r5v));
    r1v = 0x3f;
    asm volatile("" : "+r"(r1v), "+r"(r3v), "+r"(r5v));
    r2v = 0x33;
    asm volatile("" : "+r"(r1v), "+r"(r2v), "+r"(r3v), "+r"(r5v));
    r0v = 2;
    asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v), "+r"(r3v), "+r"(r5v));
    __CopyMapTiles(r0v, r1v, r2v, r3v, r5v, r5v);

    r0v = 0xa;
    asm volatile("" : "+r"(r0v));
    __WaitFrames(r0v);

    r1v = 0xb0;
    asm volatile("" : "+r"(r1v));
    r2v = 0x99;
    asm volatile("" : "+r"(r1v), "+r"(r2v));
    r2v <<= 1;
    asm volatile("" : "+r"(r1v), "+r"(r2v));
    r0v = 0;
    asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v));
    r1v <<= 1;
    asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v));
    __Func_80921c4(r0v, r1v, r2v);

    r0v = 0;
    asm volatile("" : "+r"(r0v));
    r1v = 3;
    asm volatile("" : "+r"(r0v), "+r"(r1v));
    __Func_8092b08(r0v, r1v);

    r1v = 0xb0;
    asm volatile("" : "+r"(r1v));
    r2v = 0x94;
    asm volatile("" : "+r"(r1v), "+r"(r2v));
    r1v <<= 1;
    asm volatile("" : "+r"(r1v), "+r"(r2v));
    r2v <<= 1;
    asm volatile("" : "+r"(r1v), "+r"(r2v));
    r0v = 0;
    asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v));
    __Func_80921c4(r0v, r1v, r2v);

    r0v = 2;
    asm volatile("" : "+r"(r0v));
    OvlFunc_884_2008714(r0v);
}

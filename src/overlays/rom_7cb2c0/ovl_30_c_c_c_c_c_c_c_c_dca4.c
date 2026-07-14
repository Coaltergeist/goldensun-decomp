extern void __CutsceneStart(void);
extern void __CutsceneWait(int frames);
extern void OvlFunc_945_200c8e8(int arg0, int arg1, int arg2);
extern void OvlFunc_945_200c890(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);
extern void __Func_80925cc(int actor_id, int mode);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __MapActor_DoAnim(int actor, int anim);

void OvlFunc_945_200dca4(void)
{
    register unsigned int x asm("r1");
    register unsigned int y asm("r2");
    register unsigned int z asm("r3");

    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 0);

    x = 0xea;
    y = 0x9a;
    z = 0x80;
    asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
    z <<= 8;
    x <<= 1;
    y <<= 2;
    OvlFunc_945_200c890(9, x, y, z);

    OvlFunc_945_200c8e8(8, 1, 0x14);
    __Func_80925cc(9, 2);
    __CutsceneWait(0x14);
    {
        register unsigned int v asm("r1");
        register unsigned int actor asm("r0");

        v = 0xd0;
        asm volatile("" : "+r"(v));
        actor = 8;
        asm volatile("" : "+r"(actor));
        v <<= 8;
        __Func_8092adc(actor, v, 0x50);
    }
    __Func_8092adc(8, 0, 0x14);
    __MapActor_DoAnim(8, 3);
    __CutsceneWait(0x14);
    OvlFunc_945_200c8e8(9, 0x15, 0);
}

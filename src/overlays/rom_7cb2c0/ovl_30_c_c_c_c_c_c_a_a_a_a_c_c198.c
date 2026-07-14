extern void OvlFunc_945_200c8e8(int arg0, int arg1, int arg2);
extern void OvlFunc_945_200b7b4(void);
extern void OvlFunc_945_200d0e4(void);

extern unsigned char gScript_945__0200e840[];
extern unsigned char gScript_945__0200e8e4[];

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_SetBehavior(int actor, const void *script);
extern void __Func_8092950(int actor, int arg1);

void OvlFunc_945_200c198(void)
{
    register const void *script asm("r5");

    __CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 1, 0);
    OvlFunc_945_200b7b4();
    OvlFunc_945_200c8e8(0x13, 0xb, 0xc);
    __MapActor_SetAnim(0xa, 6);
    __MapActor_SetBehavior(0xc, gScript_945__0200e840);
    script = gScript_945__0200e8e4;
    __MapActor_SetBehavior(0x24, script);
    __MapActor_SetBehavior(0x25, script);
    __MapActor_SetBehavior(0x26, script);
    __Func_8092950(0x24, 3);
    __Func_8092950(0x25, 3);
    __Func_8092950(0x26, 3);
    OvlFunc_945_200d0e4();
    __CutsceneEnd();
}

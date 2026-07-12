extern int OvlFunc_945_200cfa8(int arg0, int arg1);
extern void OvlFunc_945_200c8e8(int arg0, int arg1, int arg2);
extern void OvlFunc_945_200b7b4(void);
extern void OvlFunc_945_200d0e4(void);

extern unsigned char gScript_945__0200e840[];
extern unsigned char gScript_945__0200e8e4[];

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_SetBehavior(int actor, const void *script);
extern void __DeleteFieldActor(int actor);
extern void __Func_8092950(int actor, int arg1);

void OvlFunc_945_200d6dc(void)
{
    register int actor0 asm("r6");
    register int actor1 asm("r8");
    register const void *script asm("r5");

    actor0 = OvlFunc_945_200cfa8(0, 0);
    actor1 = OvlFunc_945_200cfa8(1, 0);
    __CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 3, 0);
    OvlFunc_945_200b7b4();
    OvlFunc_945_200c8e8(0x13, actor0, actor1);
    __MapActor_SetAnim(0xa, 6);
    script = gScript_945__0200e840;
    __MapActor_SetBehavior(actor0, script);
    __DeleteFieldActor(0xb);
    __MapActor_SetBehavior(actor1, script);
    __DeleteFieldActor(0xc);
    script = gScript_945__0200e8e4;
    __MapActor_SetBehavior(0x24, script);
    __MapActor_SetBehavior(0x25, script);
    __Func_8092950(0x24, 3);
    __Func_8092950(0x25, 3);
    OvlFunc_945_200d0e4();
    __CutsceneEnd();
}

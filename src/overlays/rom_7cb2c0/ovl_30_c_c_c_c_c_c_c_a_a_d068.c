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

void OvlFunc_945_200d068(void)
{
    register int actor0 asm("r6");
    register const void *script asm("r5");

    actor0 = OvlFunc_945_200cfa8(0, 0);
    __CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 2, 0);
    OvlFunc_945_200b7b4();
    OvlFunc_945_200c8e8(0x13, actor0, 0xc);
    __MapActor_SetAnim(0xa, 6);
    script = gScript_945__0200e840;
    __MapActor_SetBehavior(actor0, script);
    __DeleteFieldActor(0xb);
    __MapActor_SetBehavior(0xc, script);
    script = gScript_945__0200e8e4;
    __MapActor_SetBehavior(0x24, script);
    __MapActor_SetBehavior(0x25, script);
    OvlFunc_945_200d0e4();
    __CutsceneEnd();
}

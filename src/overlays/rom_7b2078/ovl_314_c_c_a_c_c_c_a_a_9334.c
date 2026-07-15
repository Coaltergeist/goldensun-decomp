typedef unsigned char u8;
typedef unsigned short u16;
extern u8 *__MapActor_GetActor(int actorId);
extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actorId, int animation);
extern void __CutsceneWait(int frames);
extern void OvlFunc_926_2008e94(void);
extern void OvlFunc_926_2008bf4(void);
extern void OvlFunc_926_2008db4(void);
extern void OvlFunc_926_2008cd4(void);
extern void OvlFunc_926_200902c(int value);
extern void __CutsceneEnd(void);
void OvlFunc_926_2009334(void)
{
    register u8 *actor asm("r5") = __MapActor_GetActor(0);
    register int direction asm("r2");
    register unsigned test asm("r3");
    register unsigned upperWord asm("r0");
    register unsigned limit asm("r1");
    __CutsceneStart();
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(20);
    asm volatile("ldr r0, =0xffffe000\n\tldrh r2, [r5, #6]\n\tadd r3, r2, r0\n\tldr r0, =0x3fff0000\n\tlsl r3, #16\n\tldr r1, =0x3fff"
                 : "=r"(direction), "=r"(test), "=r"(upperWord), "=r"(limit) : "r"(actor));
    if (test <= upperWord)
        OvlFunc_926_2008e94();
    else {
        asm volatile("ldr r0, =0xffffa000\n\tadd r3, r2, r0\n\tlsl r3, #16\n\tlsr r3, #16"
                     : "=r"(test) : "r"(direction), "r"(limit) : "r0");
        if (test <= limit)
            OvlFunc_926_2008bf4();
        else {
            asm volatile("mov r0, #0xc0\n\tlsl r0, #7\n\tadd r3, r2, r0\n\tlsl r3, #16\n\tlsr r3, #16"
                         : "=r"(test) : "r"(direction), "r"(limit) : "r0");
            if (test <= limit)
                OvlFunc_926_2008db4();
            else
                OvlFunc_926_2008cd4();
        }
    }
    __MapActor_SetAnim(0, 1);
    OvlFunc_926_200902c(1);
    __CutsceneEnd();
}

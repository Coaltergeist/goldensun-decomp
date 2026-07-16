typedef unsigned int u32;
typedef int s32;

s32 OvlFunc_945_200c5d0();
void OvlFunc_945_200c880();
void OvlFunc_945_200c8e8();
void __Actor_SetScript();
void __CutsceneStart();
void __CutsceneWait();
void __Func_80921c4();
void __Func_809259c();
void __Func_80925cc();
void __Func_8092adc();
void __Func_8093040();
void __MapActor_DoAnim();
void __MapActor_Jump();
void __MapActor_SetSpeed();
void __MessageID();
void __PlaySound();
extern s32 gScript_945__0200e738;

void OvlFunc_945_200bd10(void)
{
    s32 actor;

    __CutsceneStart();
    OvlFunc_945_200c8e8(15, 0, 1);
    __Func_80925cc(8, 1);
    __CutsceneWait(20);
    {
        register u32 r0 asm("r0");
        register u32 r1 asm("r1");
        asm volatile("mov %0, #8" : "=r"(r0));
        r1 = 0xcccc;
        asm volatile("" : "+r"(r1));
        __MapActor_SetSpeed(r0, r1, 0x6666);
    }
    {
        register u32 r0 asm("r0");
        register u32 r1 asm("r1");
        asm volatile(
            "mov %1, #0xea\n"
            "mov %0, #8\n"
            "lsl %1, %1, #1"
            : "=r"(r0), "=r"(r1));
        __Func_80921c4(r0, r1, 0x266);
    }
    {
        register u32 r0 asm("r0");
        register u32 r1 asm("r1");
        register u32 r2 asm("r2");
        asm volatile(
            "mov %1, #0xec\n"
            "mov %2, #0x95\n"
            "mov %0, #8\n"
            "lsl %1, %1, #1\n"
            "lsl %2, %2, #2"
            : "=r"(r0), "=r"(r1), "=r"(r2));
        __Func_80921c4(r0, r1, r2);
    }
    {
        register u32 r0 asm("r0");
        register u32 r1 asm("r1");
        register u32 r2 asm("r2");
        asm volatile(
            "mov %1, #0x80\n"
            "mov %0, #8\n"
            "lsl %1, %1, #8\n"
            "mov %2, #0x14"
            : "=r"(r0), "=r"(r1), "=r"(r2));
        __Func_8092adc(r0, r1, r2);
    }
    __MapActor_Jump(8, 4, 20);
    actor = OvlFunc_945_200c5d0();
    __CutsceneWait(20);
    __PlaySound(0xd6);
    __Actor_SetScript(actor, &gScript_945__0200e738);
    __CutsceneWait(40);
    __MapActor_DoAnim(8, 3);
    __CutsceneWait(20);
    {
        register u32 r0 asm("r0");
        register u32 r1 asm("r1");
        register u32 r2 asm("r2");
        asm volatile(
            "mov %1, #0xe9\n"
            "mov %2, #0x9c\n"
            "lsl %2, %2, #2\n"
            "mov %0, #8\n"
            "lsl %1, %1, #1"
            : "=r"(r0), "=r"(r1), "=r"(r2));
        __Func_80921c4(r0, r1, r2);
    }
    OvlFunc_945_200c880(8, 0x5000);
    __Func_809259c(8, 2);
    __MessageID(0x1e3b);
    __Func_8093040(8, 0, 20);
    OvlFunc_945_200c8e8(9, 11, 0);
}

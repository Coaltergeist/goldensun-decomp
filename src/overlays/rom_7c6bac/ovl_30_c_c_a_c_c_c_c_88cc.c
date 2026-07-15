typedef unsigned char u8;
typedef signed short s16;
extern u8 gState[];
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __ClearFlag(int);
extern void OvlFunc_942_2008ba0(void);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8092adc(int, int, int);
extern int GetStoryFlag(void) asm("__GetFlag");
extern void SetStoryFlag(void) asm("__SetFlag");
extern int GetStateFlag(void) asm("__GetFlag");
extern int GetGateFlag(void) asm("__GetFlag");
extern int GetClearedFlag(void) asm("__GetFlag");
extern void ClearStoryFlag(void) asm("__ClearFlag");
extern void SetActorPosition(void) asm("__MapActor_SetPos");

void OvlFunc_942_20088cc(void)
{
    register u8 *state asm("r5") = gState;
    if (*(s16 *)(state + 0x1c2) == 1 &&
        !({ asm volatile("ldr r0, =0x8ac" ::: "r0"); GetStoryFlag(); })) {
        asm volatile("ldr r0, =0x8ac" ::: "r0");
        SetStoryFlag();
        OvlFunc_942_2008ba0();
    }
    if (*(s16 *)(state + 0x1c2) == 2 &&
        !({ asm volatile("ldr r0, =0x109" ::: "r0"); GetStateFlag(); })) {
        asm volatile("ldr r0, =0x8a9" ::: "r0");
        ClearStoryFlag();
    }
    if (({ asm volatile("ldr r0, =0x911" ::: "r0"); GetGateFlag(); }) &&
        !({ asm volatile("ldr r0, =0x8a9" ::: "r0"); GetClearedFlag(); })) {
        asm volatile(
            "mov r1, #0xb0\n\t"
            "mov r2, #0xa3\n\t"
            "mov r0, #0xc\n\t"
            "lsl r1, #15\n\t"
            "lsl r2, #19"
            ::: "r0", "r1", "r2");
        SetActorPosition();
        __Func_8092adc(0xc, 0, 0);
    }
    asm volatile("" : : "r"(state));
}

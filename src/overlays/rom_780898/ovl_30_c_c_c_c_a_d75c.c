typedef unsigned int u32;

extern u32 __Random(void);
extern void __vec3_translate(u32 a, u32 b, u32 *v);
extern void *__CreateActor(int type, int x, int y, int z);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Actor_SetAnim(void *actor, int animation);
extern void __Actor_SetScript(void *actor, const void *script);
extern void __PlaySound(int sound);
extern unsigned char gScript_883__0200e6e0[];

void OvlFunc_883_200d75c(int *param_1)
{
    register int *r0pin asm("r0") = param_1;

    asm volatile(
        "mov r6, r0\n\t"
        "sub sp, #0xc\n\t"
        "ldr r3, [r6, #8]\n\t"
        "mov r5, sp\n\t"
        "str r3, [r5]\n\t"
        "bl __Random\n\t"
        "ldr r3, [r6, #0xc]\n\t"
        "ldr r2, =0xfff80000\n\t"
        "lsl r0, #4\n\t"
        "sub r3, r0\n\t"
        "add r3, r2\n\t"
        "str r3, [r5, #4]\n\t"
        "ldr r3, [r6, #0x10]\n\t"
        "str r3, [r5, #8]\n\t"
        "bl __Random\n\t"
        "mov r6, r0\n\t"
        "bl __Random\n\t"
        "mov r1, r0\n\t"
        "lsl r0, r6, #1\n\t"
        "add r0, r6\n\t"
        "mov r2, r5\n\t"
        "lsl r0, #4\n\t"
        "bl __vec3_translate\n\t"
        "ldr r1, [r5]\n\t"
        "ldr r2, [r5, #4]\n\t"
        "ldr r3, [r5, #8]\n\t"
        "ldr r0, =0x11d\n\t"
        "bl __CreateActor\n\t"
        "mov r5, r0\n\t"
        "cmp r5, #0\n\t"
        "beq 1f\n\t"
        "mov r2, r5\n\t"
        "add r2, #0x55\n\t"
        "mov r3, #2\n\t"
        "strb r3, [r2]\n\t"
        "ldr r3, =0x1999\n\t"
        "add r2, #9\n\t"
        "str r3, [r5, #0x48]\n\t"
        "mov r3, #0xc\n\t"
        "strh r3, [r2]\n\t"
        "mov r1, #0\n\t"
        "bl __Actor_SetSpriteFlags\n\t"
        "mov r0, r5\n\t"
        "mov r1, #0\n\t"
        "bl __Actor_SetAnim\n\t"
        "ldr r1, =gScript_883__0200e6e0\n\t"
        "mov r0, r5\n\t"
        "bl __Actor_SetScript\n\t"
        "ldr r1, [r5, #0x50]\n\t"
        "mov r3, #0xd\n\t"
        "ldrb r2, [r1, #9]\n\t"
        "neg r3, r3\n\t"
        "and r3, r2\n\t"
        "mov r2, #4\n\t"
        "orr r3, r2\n\t"
        "strb r3, [r1, #9]\n\t"
        "1:\n\t"
        "mov r0, #0x8a\n\t"
        "bl __PlaySound\n\t"
        "add sp, #0xc\n\t"
        :
        : "r" (r0pin)
        : "r1", "r2", "r3", "r5", "r6", "lr", "memory", "cc"
    );
}

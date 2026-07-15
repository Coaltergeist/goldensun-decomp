typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

extern void __Actor_SetScript(void *actor, const void *script);
extern const u8 gScript_888__0200c18c[];

void OvlFunc_888_200b144(u8 *actor)
{
    u16 *timer;
    register u32 speed asm("r4");
    register int direction asm("r2");
    register int mask asm("r3");
    register int remaining asm("r3");
    register u32 position asm("r3");

    asm volatile(
        "mov r3, r0\n\t"
        "add r3, #0x64\n\t"
        "mov r1, #0\n\t"
        "ldrsh r2, [r3, r1]\n\t"
        "ldr r3, [r0, #0xc]\n\t"
        "lsl r2, #12\n\t"
        "add r3, r2"
        : "=r" (position)
        : "r" (actor)
        : "r1", "r2");
    *(u32 *)(actor + 0x0c) = position;
    *(u32 *)(actor + 0x3c) = position;
    asm volatile("" : : : "memory");

    timer = (u16 *)(actor + 0x66);
    asm volatile(
        "ldrh r3, [r1]\n\t"
        "lsl r3, #16\n\t"
        "asr r2, r3, #18\n\t"
        "ldr r3, =3\n\t"
        "and r2, r3"
                 : "+r" (direction), "=r" (mask));
    /* Select the fixed-point speed for direction 0, 1, 2, or 3. */
    asm volatile(
        "mov r4, #0\n\t"
        "cmp r2, #1\n\t"
        "beq 2f\n\t"
        "cmp r2, #1\n\t"
        "bgt 5f\n\t"
        "cmp r2, #0\n\t"
        "beq 1f\n\t"
        "b 4f\n"
        "5:\n\t"
        "cmp r2, #2\n\t"
        "beq 3f\n\t"
        "cmp r2, #3\n\t"
        "beq 2f\n\t"
        "b 4f\n\t"
        ".pool\n\t"
        ".align 2\n"
        "1:\n\t"
        "mov r4, #0x80\n\t"
        "lsl r4, #9\n\t"
        "b 4f\n"
        "2:\n\t"
        "ldr r4, =0xcccc\n\t"
        "b 4f\n"
        "3:\n\t"
        "ldr r4, =0x9999\n"
        "4:"
        : "=r" (speed)
        : "r" (direction)
        : "cc");

    *(u32 *)(actor + 0x18) = speed;
    *(u32 *)(actor + 0x1c) = speed;
    asm volatile("" : : : "memory");
    asm volatile(
        "ldrh r3, [r1]\n\t"
        "sub r3, #1\n\t"
        "strh r3, [r1]\n\t"
        "lsl r3, #16"
        : "=r" (remaining)
        : "r" (timer)
        : "memory");
    if (remaining <= 0) {
        register const void *script asm("r1");
        asm volatile("ldr r1, =gScript_888__0200c18c" : "=r" (script));
        __Actor_SetScript(actor, script);
    }
}

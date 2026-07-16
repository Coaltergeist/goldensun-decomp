typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *_GetUnit(s32 unitId);
extern void _Func_8016498(s32 window);
extern void _Func_801e7c0(s32 text, s32 window, s32 x, s32 y);
extern void _Func_801ea08(s32 value, s32 digits, s32 window, s32 x, s32 flags);
extern s32 _CanRemoveItem(s32 unitId, s32 slot);
extern s32 Func_80b19cc(u32 item);

void Func_80b386c(s32 window, s32 unitId, s32 slot)
{
    register s32 uid asm("r10");
    register s32 win asm("r7");
    register s32 slt asm("r9") = slot;

    __asm__ volatile ("mov r10, %3\n\tmov r7, %2"
        : "=r"(uid), "=r"(win) : "r"(window), "r"(unitId));
    __asm__ volatile ("mov r0, r10" : : : "r0", "memory");
    __asm__ ("" : "=r"(slt) : "0"(slot));
    __asm__ volatile ("" ::: "memory");

    __asm__ volatile (
        "sub sp, #4\n\t"
        "bl _GetUnit\n\t"
        "mov r2, %2\n\t"
        "lsl r3, r2, #1\n\t"
        "mov r6, r3\n\t"
        "add r6, #0xd8\n\t"
        "ldrh r3, [r0, r6]\n\t"
        "ldr r5, =0x1ff\n\t"
        "and r5, r3\n\t"
        "ldrh r3, [r0, r6]\n\t"
        "lsr r3, #11\n\t"
        "add r3, #1\n\t"
        "mov r8, r0\n\t"
        "mov r11, r3\n\t"
        "cmp %0, #0\n\t"
        "beq 99f\n\t"
        "mov r0, %0\n\t"
        "bl _Func_8016498\n\t"
        "ldr r0, =0x182\n\t"
        "mov r3, #0\n\t"
        "add r0, r5, r0\n\t"
        "mov r1, %0\n\t"
        "mov r2, #0\n\t"
        "bl _Func_801e7c0\n\t"
        "mov r0, %1\n\t"
        "mov r1, %2\n\t"
        "bl _CanRemoveItem\n\t"
        "mov r3, #4\n\t"
        "neg r3, r3\n\t"
        "cmp r0, r3\n\t"
        "bne 10f\n\t"
        "ldr r0, =0xc94\n\t"
        "b 13f\n"
    "10:\n\t"
        "mov r2, #3\n\t"
        "neg r2, r2\n\t"
        "cmp r0, r2\n\t"
        "bne 11f\n\t"
        "ldr r0, =0xc95\n"
    "13:\n\t"
        "mov r1, %0\n\t"
        "mov r2, #0\n\t"
        "mov r3, #8\n\t"
        "bl _Func_801e7c0\n\t"
        "b 99f\n"
    "11:\n\t"
        "mov r3, r8\n\t"
        "ldrh r0, [r3, r6]\n\t"
        "bl Func_80b19cc\n\t"
        "ldr r5, =0xc8d\n\t"
        "mov r6, r11\n\t"
        "mul r6, r0\n\t"
        "mov r1, %0\n\t"
        "mov r0, r5\n\t"
        "mov r2, #8\n\t"
        "mov r3, #8\n\t"
        "bl _Func_801e7c0\n\t"
        "mov r3, #8\n\t"
        "str r3, [sp]\n\t"
        "mov r0, r6\n\t"
        "mov r1, #5\n\t"
        "mov r2, %0\n\t"
        "mov r3, #0x28\n\t"
        "sub r5, #5\n\t"
        "bl _Func_801ea08\n\t"
        "mov r0, r5\n\t"
        "mov r1, %0\n\t"
        "mov r2, #0x50\n\t"
        "mov r3, #8\n\t"
        "bl _Func_801e7c0\n"
    "99:\n\t"
        "add sp, #4\n\t"
        : : "r"(win), "r"(uid), "r"(slt)
        : "r0", "r1", "r2", "r3", "r5", "r6", "r8", "r11", "lr", "memory", "cc"
    );
}

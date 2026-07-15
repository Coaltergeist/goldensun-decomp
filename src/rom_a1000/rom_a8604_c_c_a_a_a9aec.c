typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *_GetItemInfo(u32 itemId);
extern void _Func_801e7c0(s32, s32, s32, s32);

void Func_80a9aec(s32 actor, u16 *items)
{
    register s32 actorArg asm("r0") = actor;
    register u16 *itemsArg asm("r1") = items;
    register u16 *r7v asm("r7");

    asm volatile(
        "ldr r3, 90f\n\t"
        "mov r8, r3\n\t"
        "mov r3, #0xe\n\t"
        "mov r6, r0\n\t"
        "mov r7, r1\n\t"
        "mov sl, r3\n\t"
        "80:\n\t"
        "ldrh r0, [r7]\n\t"
        "ldr r3, 91f\n\t"
        "and r3, r0\n\t"
        "add r7, #2\n\t"
        "cmp r3, #0\n\t"
        "beq 81f\n\t"
        "ldr r3, 92f\n\t"
        "mov r5, r3\n\t"
        "and r5, r0\n\t"
        "mov r0, r5\n\t"
        "bl _GetItemInfo\n\t"
        "ldrb r3, [r0, #2]\n\t"
        "cmp r3, #2\n\t"
        "beq 86f\n\t"
        "cmp r3, #2\n\t"
        "bgt 82f\n\t"
        "cmp r3, #1\n\t"
        "beq 83f\n\t"
        "b 81f\n\t"
        ".align 2, 0\n\t"
        "91: .word 0x200\n\t"
        "92: .word 0x1ff\n\t"
        "90: .word 0x182\n\t"
        "82:\n\t"
        "cmp r3, #3\n\t"
        "beq 84f\n\t"
        "cmp r3, #4\n\t"
        "beq 85f\n\t"
        "b 81f\n\t"
        "83:\n\t"
        "mov r3, r8\n\t"
        "add r0, r5, r3\n\t"
        "mov r1, r6\n\t"
        "mov r2, #8\n\t"
        "mov r3, #8\n\t"
        "bl _Func_801e7c0\n\t"
        "b 81f\n\t"
        "86:\n\t"
        "mov r3, r8\n\t"
        "add r0, r5, r3\n\t"
        "mov r1, r6\n\t"
        "mov r2, #8\n\t"
        "mov r3, #0x38\n\t"
        "bl _Func_801e7c0\n\t"
        "b 81f\n\t"
        "84:\n\t"
        "mov r3, r8\n\t"
        "add r0, r5, r3\n\t"
        "mov r1, r6\n\t"
        "mov r2, #8\n\t"
        "mov r3, #0x28\n\t"
        "bl _Func_801e7c0\n\t"
        "b 81f\n\t"
        "85:\n\t"
        "mov r3, r8\n\t"
        "add r0, r5, r3\n\t"
        "mov r1, r6\n\t"
        "mov r2, #8\n\t"
        "mov r3, #0x18\n\t"
        "bl _Func_801e7c0\n\t"
        "81:\n\t"
        "mov r3, #1\n\t"
        "neg r3, r3\n\t"
        "add sl, r3\n\t"
        "mov r3, sl\n\t"
        "cmp r3, #0\n\t"
        "bge 80b\n\t"
        : "+r"(actorArg), "+r"(itemsArg), "=r"(r7v)
        :
        : "r0", "r1", "r2", "r3", "r5", "r6", "r8", "sl", "lr", "cc",
          "memory");
}

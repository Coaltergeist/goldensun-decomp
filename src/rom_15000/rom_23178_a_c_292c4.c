typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void Func_8016478(void *box);
extern void UIDrawText(const void *text, void *box, int x, int y);
extern void Func_8029274(u32 value, u32 digits, char *output);
extern int _GetFlag(int flag);
extern const char L3742c[] asm(".L3742c");
extern const char L37428[] asm(".L37428");

void Func_80292c4(void *box, int flagGroup)
{
    register int r7val asm("r7");

    asm volatile(
        "mov r10, r0\n\t"
        "sub sp, #0x24\n\t"
        "mov r5, r1\n\t"
        "bl Func_8016478\n\t"
        "mov r1, r10\n\t"
        "mov r2, #0x30\n\t"
        "mov r3, #0\n\t"
        "ldr r0, =.L3742c\n\t"
        "bl UIDrawText\n\t"
        "add r2, sp, #8\n\t"
        "mov r8, r2\n\t"
        "mov r2, sp\n\t"
        "mov r1, #0\n\t"
        "mov r3, #0x1c\n\t"
        "add r2, #0x21\n\t"
        "str r1, [sp, #4]\n\t"
        "add r3, sp\n\t"
        "mov r1, #0x10\n\t"
        "str r2, [sp]\n\t"
        "lsl r7, r5, #8\n\t"
        "mov r11, r3\n\t"
        "mov r9, r1\n\t"
        "1:\n\t"
        "mov r3, r11\n\t"
        "2:\n\t"
        "mov r1, #0\n\t"
        "strb r1, [r3]\n\t"
        "ldr r2, [sp]\n\t"
        "add r3, #1\n\t"
        "cmp r3, r2\n\t"
        "bne 2b\n\t"
        "mov r0, r7\n\t"
        "mov r1, #3\n\t"
        "mov r2, r11\n\t"
        "bl Func_8029274\n\t"
        "mov r0, r11\n\t"
        "mov r1, r10\n\t"
        "mov r2, #0\n\t"
        "mov r3, r9\n\t"
        "bl UIDrawText\n\t"
        "ldr r0, =.L37428\n\t"
        "mov r1, r10\n\t"
        "mov r2, #0x20\n\t"
        "mov r3, r9\n\t"
        "bl UIDrawText\n\t"
        "mov r6, r8\n\t"
        "mov r5, r8\n\t"
        "add r6, #0xf\n\t"
        "3:\n\t"
        "mov r0, r7\n\t"
        "bl _GetFlag\n\t"
        "neg r3, r0\n\t"
        "orr r3, r0\n\t"
        "lsr r3, #31\n\t"
        "add r3, #0x30\n\t"
        "strb r3, [r5]\n\t"
        "add r5, #1\n\t"
        "add r7, #1\n\t"
        "cmp r5, r6\n\t"
        "ble 3b\n\t"
        "mov r3, #0x10\n\t"
        "mov r2, #0\n\t"
        "mov r1, r8\n\t"
        "strb r2, [r1, r3]\n\t"
        "mov r0, r8\n\t"
        "mov r3, r9\n\t"
        "mov r1, r10\n\t"
        "mov r2, #0x30\n\t"
        "bl UIDrawText\n\t"
        "ldr r1, [sp, #4]\n\t"
        "mov r3, #8\n\t"
        "add r1, #1\n\t"
        "add r9, r3\n\t"
        "str r1, [sp, #4]\n\t"
        "cmp r1, #0x10\n\t"
        "bne 1b\n\t"
        "add sp, #0x24"
        : "=r"(r7val)
        :
        : "r0", "r1", "r2", "r3", "r5", "r6", "r8", "r9", "r10", "r11",
          "r12", "lr", "memory");
}

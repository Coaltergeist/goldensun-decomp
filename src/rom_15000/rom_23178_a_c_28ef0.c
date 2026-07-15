typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern int _GetLocationName(int location, int variant);
extern void Func_8016478(void *box);
extern void Func_801e9a0(u32 value, u32 digits, void *box, int x, int y);
extern void Func_801e858(const char *text, void *box, int x, int y);
extern void DrawSmallText(int text_id, void *box, int x, int y);
extern const char L37428[] asm(".L37428");

void Func_8028ef0(void *box, s16 locationX, s16 *locationY)
{
    asm volatile(
        "mov r5, r1\n\t"
        "lsl r5, r5, #16\n\t"
        "asr r5, r5, #16\n\t"
        "mov r6, r0\n\t"
        "mov r3, #0\n\t"
        "ldrsh r1, [r2, r3]\n\t"
        "mov r0, r5\n\t"
        "sub sp, #4\n\t"
        "mov r9, r2\n\t"
        "bl _GetLocationName\n\t"
        "ldr r3, =0x99b\n\t"
        "mov r10, r0\n\t"
        "mov r0, r6\n\t"
        "add r10, r3\n\t"
        "bl Func_8016478\n\t"
        "mov r2, #0xe\n\t"
        "str r2, [sp]\n\t"
        "mov r8, r2\n\t"
        "mov r0, r5\n\t"
        "mov r2, r6\n\t"
        "mov r3, #0\n\t"
        "mov r1, #3\n\t"
        "bl Func_801e9a0\n\t"
        "mov r2, r9\n\t"
        "mov r3, #0\n\t"
        "ldrsh r0, [r2, r3]\n\t"
        "mov r3, r8\n\t"
        "str r3, [sp]\n\t"
        "mov r2, r6\n\t"
        "mov r1, #3\n\t"
        "mov r3, #0x52\n\t"
        "bl Func_801e9a0\n\t"
        "ldr r2, =.L37428\n\t"
        "mov r8, r2\n\t"
        "mov r0, r8\n\t"
        "mov r1, r6\n\t"
        "mov r2, #0x4a\n\t"
        "mov r3, #0\n\t"
        "bl Func_801e858\n\t"
        "ldr r3, =0xa07\n\t"
        "add r5, r5, r3\n\t"
        "mov r0, r5\n\t"
        "mov r1, r6\n\t"
        "mov r2, #0\n\t"
        "mov r3, #0\n\t"
        "bl DrawSmallText\n\t"
        "mov r0, r8\n\t"
        "mov r1, r6\n\t"
        "mov r2, #0x4a\n\t"
        "mov r3, #0xe\n\t"
        "bl Func_801e858\n\t"
        "mov r0, r10\n\t"
        "mov r1, r6\n\t"
        "mov r2, #0x52\n\t"
        "mov r3, #0\n\t"
        "bl DrawSmallText\n\t"
        "add sp, #4"
        :
        :
        : "r0", "r1", "r2", "r3", "r5", "r6", "r8", "r9", "r10", "r12", "lr",
          "memory");
}

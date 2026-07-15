typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001f2c;
extern void _Func_8016498(void *win);
extern void WaitFrames(s32 frames);
extern void _Func_801e7c0(s32 a, void *win, s32 c, s32 d);
extern void Func_80a2268(u16 *box, s32 x, s32 y, s32 width, s32 height, s32 palette);

s32 Func_80a5614(void *unused0, void *unused1, u8 *menu)
{
    u8 *root;
    s32 i;
    s32 y;
    s32 one;

    root = iwram_3001f2c;
    *(s32 *)(menu + 0x18) = *(s32 *)(menu + 8) * 5 + *(s32 *)(menu + 0x10);
    _Func_8016498(*(void **)(root + 0x2c));
    WaitFrames(1);
    asm volatile(
        "mov r2, r8\n\t"
        "ldr r3, [r2, #0x18]\n\t"
        "mov r1, #0xe4\n\t"
        "lsl r3, #1\n\t"
        "lsl r1, #1\n\t"
        "add r3, r1\n\t"
        "ldrh r2, [r7, r3]\n\t"
        "mov r3, r2\n\t"
        "cmp r3, #0\n\t"
        "beq 1f\n\t"
        "ldr r0, =0x1ff\n\t"
        "ldr r3, =0x75\n\t"
        "and r0, r2\n\t"
        "add r0, r3\n\t"
        "ldr r1, [r7, #0x2c]\n\t"
        "mov r2, #0\n\t"
        "mov r3, #0\n\t"
        "bl _Func_801e7c0\n\t"
        "1:\n\t"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    i = 0;
    one = 1;
    y = 1;
    do {
        if (i == *(s32 *)(menu + 0x10)) {
            Func_80a2268(*(u16 **)(root + 0x20), 1, y, 0xe, one, 0xe);
        } else {
            Func_80a2268(*(u16 **)(root + 0x20), 1, y, 0xe, one, 0xf);
        }
        i++;
        y += 2;
    } while (i <= 4);
    WaitFrames(1);
    return 1;
}

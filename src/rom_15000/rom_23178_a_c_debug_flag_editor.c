typedef unsigned char u8;
typedef unsigned int u32;

extern u32 CreateUIBox(int, int, int, int, int);
extern void Func_80292c4(u32, int);
extern void Func_801c0dc(u8 *, u32 *);
extern void WaitFrames(int);
extern int Func_802938c(u32, int *, int *);
extern void Func_801c154(u8 *, int, int);
extern void Func_801c17c(u32);
extern void CloseUIBox(u32, int);

int Debug_FlagEditor(void)
{
    u8 frame[32];
    register u32 created_box asm("r0");
    register int initial_flag asm("r1");
    register int *cursor asm("r6");
    register u32 box asm("r5");
    register u8 *sprite asm("r7");
    register u32 *sprite_slot asm("r1");
    register int *flag_ptr asm("r8");

    /* Preserve the original five-argument call's stack/register schedule. */
    asm volatile(
        "mov r3, #8\n\t"
        "str r3, [sp, #4]\n\t"
        "add r6, sp, #0xc\n\t"
        "mov r5, #0\n\t"
        "mov r3, #2\n\t"
        "str r5, [sp, #0xc]\n\t"
        "mov r2, #0x1c\n\t"
        "str r5, [r6, #4]\n\t"
        "mov r1, #0\n\t"
        "str r3, [sp]\n\t"
        "mov r0, #1\n\t"
        "mov r3, #0x14\n\t"
        "bl CreateUIBox\n\t"
        "ldr r1, [sp, #4]"
        : "=r"(created_box), "=r"(initial_flag), "=r"(cursor)
        :
        : "r2", "r3", "memory", "lr");
    box = created_box;
    Func_80292c4(box, initial_flag);

    asm volatile(
        "add r7, sp, #0x14\n\t"
        "add r1, sp, #8"
        : "=r"(sprite), "=r"(sprite_slot));
    Func_801c0dc(sprite, sprite_slot);
    asm volatile(
        "add r3, sp, #4\n\t"
        "mov r8, r3"
        : "=r"(flag_ptr)
        :
        : "r3");

    for (;;) {
        int result;

        WaitFrames(1);
        result = Func_802938c(box, flag_ptr, cursor);
        if (result == -1)
            break;
        if (result == 1)
            Func_80292c4(box, *(int *)(frame + 4));
        Func_801c154(sprite, *(int *)(frame + 12) * 8 + 0x3a,
                      cursor[1] * 8 + 0x14);
    }

    Func_801c17c(*(u32 *)(frame + 8));
    CloseUIBox(box, 2);
    return 0;
}

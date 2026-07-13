typedef unsigned char u8;

extern u8 **GetBattleActor(int actor);
extern void Func_80c0cec(int x, int y, int z, int arg3);

void Func_80c0df4(int first, int second, int arg3)
{
    register int second_actor asm("r6");
    register int final_arg asm("r8");
    register u8 *a asm("r5");
    register u8 *b asm("r3");
    register int first_x asm("r1");
    register int second_x asm("r0");
    register int first_z asm("r4");
    register int second_z asm("r2");

    asm volatile("mov %0, %2\n\tmov %1, %3"
        : "=&r"(second_actor), "=r"(final_arg)
        : "r"(second), "r"(arg3));
    a = *GetBattleActor(first);
    b = *GetBattleActor(second_actor);
    first_x = *(int *)(a + 8);
    second_x = *(int *)(b + 8);
    first_z = *(int *)(a + 0x10);
    second_z = *(int *)(b + 0x10);
    asm("" : "+r"(first_x), "+r"(second_x), "+r"(first_z),
        "+r"(second_z));

    second_x += first_x;
    second_z += first_z;
    asm("" : "+r"(second_x), "+r"(second_z));
    Func_80c0cec(second_x / 2, 0, second_z / 2, final_arg);
}

typedef unsigned char u8;

extern int Func_8000948(int value);
extern void _Actor_TravelTo(u8 *actor, int x, int z, int y);
extern void _Actor_SetAnim(u8 *actor, int animation);

int Func_809397c(u8 *actor)
{
    register u8 *self asm("r6") = actor;
    register u8 *target asm("r1") = *(u8 **)(self + 0x68);

    if (target != 0) {
        register int dx asm("r5");
        register int dy asm("r8");
        register int distance asm("r0");
        register int radius asm("r7");

        asm volatile(
            "ldr r2, [r1, #8]\n\tldr r3, [r6, #8]\n\t"
            "sub r0, r2, r3\n\tcmp r0, #0\n\tbge 1f\n\t"
            "ldr r2, =0xffff\n\tadd r0, r2\n1:\n\t"
            "ldr r2, [r1, #0x10]\n\tldr r3, [r6, #0x10]\n\t"
            "asr r5, r0, #16\n\tsub r0, r2, r3\n\t"
            "cmp r0, #0\n\tbge 2f\n\tldr r3, =0xffff\n\t"
            "add r0, r3\n2:\n\tasr r0, #16\n\tmov r8, r0\n\t"
            "mov r2, r8\n\tmov r3, r8\n\tmul r3, r2\n\t"
            "mov r0, r5\n\tmul r0, r5\n\tadd r0, r3\n\t"
            "ldr r3, =Func_8000948\n\tbl _call_via_r3"
            : "=r"(dx), "=r"(dy), "=r"(distance)
            : "r"(target), "r"(self)
            : "r1", "r2", "r3", "memory");
        asm volatile("mov r3, r6\n\tadd r3, #0x64\n\t"
                     "mov r2, #0\n\tldrsh r7, [r3, r2]"
                     : "=r"(radius) : "r"(self) : "r2", "r3");
        if (distance >= radius) {
            int x = *(int *)(self + 8) + ((dx << 20) / radius);
            int y = *(int *)(self + 0x10) + ((dy << 20) / radius);
            _Actor_TravelTo(self, x, *(int *)(self + 0xc), y);
            _Actor_SetAnim(self, 2);
        } else {
            _Actor_SetAnim(self, 1);
        }
    }
    return 1;
}

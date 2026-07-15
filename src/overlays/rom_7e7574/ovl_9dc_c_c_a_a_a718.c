extern void __MapActor_WaitMovement(int actor);

void OvlFunc_959_200a718(void)
{
    asm volatile(
        "mov r1, #0x80\n\tmov r2, #0x80\n\tmov r0, #2\n\t"
        "lsl r1, #9\n\tlsl r2, #8\n\tbl __MapActor_SetSpeed"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #0xfc\n\tmov r0, #2\n\tlsl r1, #1\n\t"
        "mov r2, #0xd8\n\tbl __Func_809218c"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #0x80\n\tmov r2, #0x80\n\tmov r0, #3\n\t"
        "lsl r1, #9\n\tlsl r2, #8\n\tbl __MapActor_SetSpeed"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #0xdc\n\tmov r0, #3\n\tlsl r1, #1\n\t"
        "mov r2, #0xe8\n\tbl __Func_809218c"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #0x80\n\tmov r2, #0x80\n\tmov r0, #1\n\t"
        "lsl r1, #9\n\tlsl r2, #8\n\tbl __MapActor_SetSpeed"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #0xf0\n\tlsl r1, #1\n\tmov r2, #0xe0\n\t"
        "mov r0, #1\n\tbl __Func_809218c"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");

    __MapActor_WaitMovement(1);
    asm volatile(
        "mov r1, #0xc0\n\tlsl r1, #8\n\tmov r2, #0\n\t"
        "mov r0, #1\n\tbl __Func_8092adc"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    __MapActor_WaitMovement(2);
    asm volatile(
        "mov r1, #0xc0\n\tlsl r1, #8\n\tmov r2, #0\n\t"
        "mov r0, #2\n\tbl __Func_8092adc"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    __MapActor_WaitMovement(3);
    asm volatile(
        "mov r1, #0xc0\n\tmov r0, #3\n\tlsl r1, #8\n\t"
        "mov r2, #0\n\tbl __Func_8092adc"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #0xc0\n\tmov r0, #0\n\tlsl r1, #8\n\t"
        "mov r2, #0\n\tbl __Func_8092adc"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
}

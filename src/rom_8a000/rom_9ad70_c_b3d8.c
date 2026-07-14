typedef unsigned char u8;

struct GlobalState {
    u8 pad[0x1da];
    short field_1da;
};

extern struct GlobalState gState;
extern void _DeleteActor(u8 *actor);

void Func_809b3d8(u8 *actor)
{
    register int limit asm("r4");
    register int position asm("r5");
    register u8 *parent asm("r6");
    register int speed asm("r2");
    register int maximum asm("r1");

    asm volatile(
        "ldr r3, =gState\n\t"
        "mov r5, #0xed\n\t"
        "lsl r5, r5, #1\n\t"
        "ldr r1, [%2, #0x14]\n\t"
        "mov r2, #0xa0\n\t"
        "lsl r2, r2, #12\n\t"
        "add r3, r3, r5\n\t"
        "add %0, r1, r2\n\t"
        "mov r5, #0\n\t"
        "ldrsh r2, [r3, r5]\n\t"
        "ldr r3, =1\n\t"
        "ldr %1, [%2, #0x68]\n\t"
        "cmp r2, r3\n\t"
        "bne 1f\n\t"
        "mov r2, #0x80\n\t"
        "lsl r2, r2, #11\n\t"
        "add %0, r1, r2\n"
        "1:"
        : "=r"(limit), "=r"(parent)
        : "r"(actor)
        : "r1", "r2", "r3", "r5", "cc", "memory");

    position = *(int *)(actor + 0xc);
    if (position <= limit) {
        _DeleteActor(actor);
        return;
    }

    asm volatile(
        "ldr r3, [r0, #0x18]\n\t"
        "mov r4, #0xc0\n\t"
        "lsl r4, r4, #4\n\t"
        "mov %1, #0x80\n\t"
        "add %0, r3, r4\n\t"
        "lsl %1, %1, #9"
        : "=r"(speed), "=r"(maximum)
        :
        : "r3", "r4");
    if (speed > maximum)
        speed = maximum;

    *(int *)(actor + 0x18) = speed;
    *(int *)(actor + 0x1c) = -speed;
    asm volatile(
        "ldr r4, =0xfffe0000\n\t"
        "ldr r3, [%1, #8]\n\t"
        "str r3, [%0, #8]\n\t"
        "add r3, %2, r4\n\t"
        "str r3, [%0, #0xc]"
        :
        : "r"(actor), "r"(parent), "r"(position)
        : "r3", "r4", "memory");
    asm volatile(
        "sub r3, %2, %0\n\t"
        "lsl %0, r3, #2\n\t"
        "add %0, %0, r3\n\t"
        "ldr r3, [%1, #0x10]\n\t"
        "mov r5, #0x80\n\t"
        "sub r3, r3, %0\n\t"
        "lsl r5, r5, #13\n\t"
        "add r3, r3, r5\n\t"
        "str r3, [%3, #0x10]"
        : "+r"(speed)
        : "r"(parent), "r"(maximum), "r"(actor)
        : "r3", "r5", "memory");
}

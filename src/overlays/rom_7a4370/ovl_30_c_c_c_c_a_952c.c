typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern void __vec3_translate(int x, int y, int *position);
extern void __Func_8003f3c(int id);
extern void __DeleteActor(void *actor);

void OvlFunc_917_200952c(u8 *actor)
{
    register u8 *base asm("r6") = actor;
    register s16 *frame asm("r7") = (s16 *)(base + 0x64);
    register int index asm("r2");

    asm(
        "mov r1, #0\n\t"
        "ldrsh %0, [%1, r1]"
        : "=r"(index)
        : "r"(frame)
        : "r1");

    if (index <= 0x77) {
        int position[3];

        position[0] = *(int *)(base + 0x38);
        position[1] = *(int *)(base + 0x3c);
        position[2] = *(int *)(base + 0x40);
        {
            register int x asm("r0");
            register int y asm("r1");

            asm volatile(
                "mov r3, r6\n\t"
                "add r3, #0x66\n\t"
                "mov r1, #0\n\t"
                "ldrsh r3, [r3, r1]\n\t"
                "lsl r1, %0, #1\n\t"
                "add r1, %0\n\t"
                "lsl r1, #8\n\t"
                "lsl r0, %0, #16\n\t"
                "add r1, r3"
                : "+r"(index), "=r"(x), "=r"(y)
                :
                : "r3");
            __vec3_translate(x, y, position);
        }
        *(int *)(base + 8) = position[0];
        *(int *)(base + 0xc) = position[1];
        *(int *)(base + 0x10) = position[2];
        *(int *)(base + 0x18) += 0x147;
        *(int *)(base + 0x1c) += 0x147;
        *frame = (u16)*frame + 1;
    } else {
        __Func_8003f3c(*(u8 *)(*(u8 **)(base + 0x50) + 0x1c));
        __DeleteActor(base);
    }
}

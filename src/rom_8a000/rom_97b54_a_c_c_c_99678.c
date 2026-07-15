typedef unsigned char u8;
typedef unsigned short u16;
typedef signed char s8;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

extern u8 gState[];
extern u8 iwram_3001ebc[];
extern u8 ewram_2020000[];
extern u8 gBuffer[];
extern u32 GetFieldActor(u32 actorId);

void Func_8099678(void)
{
    register u32 r0v asm("r0");
    register u8 *state asm("r6");
    register u8 *r5v asm("r5");
    register s32 r3v asm("r3");

    asm volatile(
        "ldr r3, =gState\n\t"
        "mov r2, #0xfa\n\t"
        "lsl r2, #1\n\t"
        "add r3, r2\n\t"
        "ldr r5, =iwram_3001ebc\n\t"
        "ldr r0, [r3]\n\t"
        "ldr r6, [r5]\n\t"
        : "=r"(r0v), "=r"(state), "=r"(r5v)
        :
        : "r2", "r3", "memory"
    );

    asm volatile(
        "bl GetFieldActor\n\t"
        : "+r"(r0v)
        :
        : "r1", "r2", "r3", "lr", "memory"
    );

    asm volatile(
        "mov r2, #0xcf\n\t"
        "lsl r2, #1\n\t"
        "add r3, r6, r2\n\t"
        "mov r2, #0\n\t"
        "ldrsh r3, [r3, r2]\n\t"
        "sub r5, #0x4c\n\t"
        "ldr r5, [r5]\n\t"
        : "=r"(r3v), "+r"(r5v)
        : "r"(state)
        : "r2"
    );

    if (r3v == 3) {
        asm volatile(
            "ldr r3, [r0, #8]\n\t"
            "cmp r3, #0\n\t"
            "bge 1f\n\t"
            "ldr r2, =0x1fffff\n\t"
            "add r3, r2\n\t"
            "1:\n\t"
            "ldr r0, [r0, #0x10]\n\t"
            "asr r2, r3, #21\n\t"
            "mov r1, #0x1f\n\t"
            "and r2, r1\n\t"
            "cmp r0, #0\n\t"
            "bge 2f\n\t"
            "ldr r3, =0x1fffff\n\t"
            "add r0, r3\n\t"
            "2:\n\t"
            "asr r3, r0, #21\n\t"
            "and r3, r1\n\t"
            "lsl r3, #5\n\t"
            "add r3, r2, r3\n\t"
            "ldr r2, =ewram_2020000\n\t"
            "lsl r3, #2\n\t"
            "add r5, r3, r2\n\t"
            : "+r"(r5v), "+r"(r0v)
            :
            : "r1", "r2", "r3", "cc"
        );
    } else {
        asm volatile(
            "mov r2, r0\n\t"
            "add r2, #0x22\n\t"
            "ldrb r3, [r2]\n\t"
            "cmp r3, #2\n\t"
            "bhi 3f\n\t"
            "mov r2, r3\n\t"
            "lsl r3, r2, #1\n\t"
            "add r3, r2\n\t"
            "mov r2, #0x98\n\t"
            "lsl r3, #4\n\t"
            "lsl r2, #1\n\t"
            "add r3, r2\n\t"
            "ldr r5, [r5, r3]\n\t"
            "b 4f\n\t"
            "3:\n\t"
            "ldr r5, =gBuffer\n\t"
            "4:\n\t"
            "ldr r3, [r0, #8]\n\t"
            "cmp r3, #0\n\t"
            "bge 5f\n\t"
            "ldr r2, =0xfffff\n\t"
            "add r3, r2\n\t"
            "5:\n\t"
            "ldr r0, [r0, #0x10]\n\t"
            "asr r2, r3, #20\n\t"
            "cmp r0, #0\n\t"
            "bge 6f\n\t"
            "ldr r3, =0xfffff\n\t"
            "add r0, r3\n\t"
            "6:\n\t"
            "asr r3, r0, #20\n\t"
            "lsl r3, #7\n\t"
            "add r3, r2, r3\n\t"
            "lsl r3, #2\n\t"
            "add r5, r3\n\t"
            : "+r"(r5v), "+r"(r0v)
            :
            : "r2", "r3", "cc"
        );
    }

    asm volatile(
        "ldrb r3, [r5, #2]\n\t"
        "cmp r3, #0xfb\n\t"
        "beq 7f\n\t"
        "mov r3, #0xbf\n\t"
        "lsl r3, #1\n\t"
        "add r2, r6, r3\n\t"
        "ldr r3, =0x2092\n\t"
        "strh r3, [r2]\n\t"
        "7:\n\t"
        :
        : "r"(r5v), "r"(state)
        : "r2", "r3", "cc", "memory"
    );
}

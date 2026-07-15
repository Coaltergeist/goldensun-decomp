typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef int s32;

typedef struct Vec3 {
    s32 x;
    s32 y;
    s32 z;
} Vec3;

typedef struct Actor {
    u8 pad0[6];
    u16 angle;
    s32 x;
    s32 y;
    s32 z;
} Actor;

extern u8 gState[];
extern u8 *iwram_3001e70;
extern u8 ewram_2020000[];
extern void vec3_translate(int distance, int angle, Vec3 *position);

int Func_808bd24(void)
{
    register Actor *actor asm("r2") = (Actor *)gState;
    register u8 *state asm("r6");
    register u8 *mapBase asm("r7");
    register Vec3 *position asm("r5");
    register int result asm("r0");
    u8 *cell;

    asm volatile(
        "mov r1, #0xfa\n\t"
        "lsl r1, #1\n\t"
        "add r2, r1\n\t"
        "ldr r3, =iwram_3001ebc\n\t"
        "ldr r2, [r2]\n\t"
        "ldr r6, [r3]\n\t"
        "lsl r2, #2\n\t"
        "add r2, #0x14\n\t"
        "ldr r2, [r6, r2]\n\t"
        "sub r3, #0x4c\n\t"
        "sub sp, #0xc\n\t"
        "ldr r7, [r3]\n\t"
        "mov r0, #0\n\t"
        : "+r"(actor), "=r"(state), "=r"(mapBase), "=r"(result)
        :
        : "r1", "r3", "memory"
    );

    if (actor != 0) {
        register s32 x0 asm("r3");
        register s32 mode asm("r3");
        register u8 *cell asm("r1");

        asm volatile(
            "ldr r3, [r2, #8]\n\t"
            "mov r5, sp\n\t"
            : "=r"(x0), "=r"(position)
            : "r"(actor)
        );
        position->x = x0;
        position->y = actor->y;
        position->z = actor->z;
        vec3_translate(0x100000, actor->angle, position);

        asm volatile(
            "mov r2, #0xcf\n\t"
            "lsl r2, #1\n\t"
            "add r3, r6, r2\n\t"
            "mov r1, #0\n\t"
            "ldrsh r3, [r3, r1]\n\t"
            : "=r"(mode)
            : "r"(state)
            : "r1", "r2"
        );

        if (mode == 3) {
            asm volatile(
                "ldr r3, [r5]\n\t"
                "cmp r3, #0\n\t"
                "bge 1f\n\t"
                "ldr r2, =0x1fffff\n\t"
                "add r3, r2\n\t"
                "1:\n\t"
                "ldr r2, [r5, #8]\n\t"
                "asr r1, r3, #21\n\t"
                "mov r0, #0x1f\n\t"
                "and r1, r0\n\t"
                "cmp r2, #0\n\t"
                "bge 2f\n\t"
                "ldr r3, =0x1fffff\n\t"
                "add r2, r3\n\t"
                "2:\n\t"
                "asr r3, r2, #21\n\t"
                "and r3, r0\n\t"
                "lsl r3, #5\n\t"
                "add r3, r1, r3\n\t"
                "ldr r2, =ewram_2020000\n\t"
                "lsl r3, #2\n\t"
                "add r1, r3, r2\n\t"
                : "=r"(cell)
                : "r"(position)
                : "r0", "r2", "r3", "cc"
            );
        } else {
            asm volatile(
                "mov r1, #0x98\n\t"
                "lsl r1, #1\n\t"
                "add r3, r7, r1\n\t"
                "ldr r1, [r3]\n\t"
                "ldr r3, [r5]\n\t"
                "cmp r3, #0\n\t"
                "bge 3f\n\t"
                "ldr r2, =0xfffff\n\t"
                "add r3, r2\n\t"
                "3:\n\t"
                "ldr r2, [r5, #8]\n\t"
                "asr r0, r3, #20\n\t"
                "cmp r2, #0\n\t"
                "bge 4f\n\t"
                "ldr r3, =0xfffff\n\t"
                "add r2, r3\n\t"
                "4:\n\t"
                "asr r3, r2, #20\n\t"
                "lsl r3, #7\n\t"
                "add r3, r0, r3\n\t"
                "lsl r3, #2\n\t"
                "add r1, r3\n\t"
                : "=r"(cell)
                : "r"(mapBase), "r"(position)
                : "r0", "r2", "r3", "cc"
            );
        }
        result = *(u8 *)(cell + 2);
    }

    asm volatile("add sp, #0xc" ::: "memory");
    return result;
}

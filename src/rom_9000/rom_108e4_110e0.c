typedef unsigned short u16;
typedef unsigned int u32;

extern u16 ewram_2020000[];
extern u16 gBuffer[];

#define COPY_TILE_COLUMN(source, destination, count)                         \
    asm volatile(                                                           \
        "ldrh r2, [r4]\n\t"                                               \
        "ldr r5, =gBuffer\n\t"                                             \
        "lsl r2, #2\n\t"                                                   \
        "add r3, r2, r5\n\t"                                               \
        "ldrh r3, [r3]\n\t"                                                \
        "add r5, #2\n\t"                                                   \
        "strh r3, [r1]\n\t"                                                \
        "add r3, r2, r5\n\t"                                               \
        "ldrh r3, [r3]\n\t"                                                \
        "mov r2, r1\n\t"                                                   \
        "add r2, #0x40\n\t"                                                \
        "add r0, #1\n\t"                                                   \
        "strh r3, [r2]\n\t"                                                \
        "add r1, #2\n\t"                                                   \
        "add r4, #4"                                                        \
        : "+r"(source), "+r"(destination), "+r"(count)                      \
        :                                                                    \
        : "r2", "r3", "r5", "memory")

void Func_80110e0(u32 position)
{
    register u16 *source asm("r4");
    register u16 *destination asm("r1");
    register unsigned int count asm("r0");

    asm volatile(
        "lsr r3, r0, #31\n\t"
        "add r3, r0, r3\n\t"
        "mov r2, #0x1f\n\t"
        "asr r3, #1\n\t"
        "and r3, r2\n\t"
        "ldr r2, =ewram_2020000\n\t"
        "lsl r3, #7\n\t"
        "add r4, r3, r2\n\t"
        "mov r3, #0x3e\n\t"
        "and r3, r0\n\t"
        "ldr r5, =0x06004000\n\t"
        "lsl r3, #6\n\t"
        "add r1, r3, r5\n\t"
        "mov r0, #0"
        : "=r"(source), "=r"(destination), "=r"(count)
        : "r"(position)
        : "r2", "r3", "r5", "memory");

    do {
        COPY_TILE_COLUMN(source, destination, count);
    } while (count <= 0x1f);

    asm volatile(
        "mov r2, #0xfc\n\t"
        "mov r3, #0xf8\n\t"
        "lsl r2, #4\n\t"
        "lsl r3, #4\n\t"
        "add r1, r2\n\t"
        "add r4, r3\n\t"
        "mov r0, #0"
        : "+r"(source), "+r"(destination), "=r"(count)
        :
        : "r2", "r3");

    do {
        COPY_TILE_COLUMN(source, destination, count);
    } while (count <= 0x1f);
}

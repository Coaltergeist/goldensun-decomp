typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001f30;
extern void Func_8098698(void);
extern void _PlaySound(int soundId);
extern int Random(void);
extern void vec3_translate(int distance, int angle, int *position);
extern u8 *CreateParticleActor(int type, int x, int y, int z);
extern void _Actor_SetScript(void *actor, const void *script);
extern const u8 L9f11c[] asm(".L9f11c");
extern void WaitFrames(int frames);
extern void Func_809748c(void);

void Field_Growth(void)
{
    u8 *actor = iwram_3001f30;
    int position[3];
    register int count asm("r8");
    register int *positionPtr asm("r6");

    Func_8098698();
    _PlaySound(0x86);

    asm volatile(
        "mov r3, #4\n\t"
        "mov r6, sp\n\t"
        "mov r8, r3"
        : "=r" (count), "=r" (positionPtr)
        :
        : "r3");

    do {
        int random;
        int distance;
        register u8 *particle asm("r5");

        positionPtr[0] = *(int *)(actor + 4);
        positionPtr[2] = *(int *)(actor + 12);
        random = Random();
        distance = random * 6 + 0x40000;
        vec3_translate(distance, Random(), positionPtr);
        asm volatile(
            "ldr r2, [r7, #8]\n\t"
            "ldr r1, [r6]\n\t"
            "ldr r3, [r6, #8]\n\t"
            "mov r0, #0xd9\n\t"
            "str r2, [r6, #4]\n\t"
            "bl CreateParticleActor\n\t"
            "mov r5, r0"
            : "=r" (particle)
            : "r" (actor), "r" (positionPtr)
            : "r0", "r1", "r2", "r3", "lr", "memory");
        if (particle != 0) {
            asm volatile(
                "ldr r1, =.L9f11c\n\t"
                "bl _Actor_SetScript\n\t"
                "mov r2, r5\n\t"
                "add r2, #0x55\n\t"
                "mov r3, #2\n\t"
                "strb r3, [r2]"
                :
                : "r" (particle)
                : "r0", "r1", "r2", "r3", "lr", "memory");
        }
        WaitFrames((((u32)Random() << 1) >> 16) + 2);
        count--;
    } while (count >= 0);

    WaitFrames(0x1e);
    Func_809748c();
}

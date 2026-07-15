typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void _PlaySound(int soundId);
extern u8 *CreateParticleActor(int kind, int x, int y, int z);
extern void _Actor_SetScript(u8 *actor, const u8 *script);
extern int Random(void);
extern void Func_8096bec(u8 *actor, int magnitude, int random);
extern const u8 Data_9f0b0[];
extern const u8 L9f0d4[] asm(".L9f0d4");

s32 Func_8098c08(u8 *self)
{
    int pos[3];
    u8 *actor;

    _PlaySound(0x86);
    pos[0] = *(int *)(self + 8);
    pos[1] = *(int *)(self + 0xc);
    pos[2] = *(int *)(self + 0x10);

    actor = CreateParticleActor(0x11b, pos[0], pos[1] + 0xffe00000, pos[2]);
    if (actor != 0) {
        u8 *p = actor + 0x55;
        u16 scriptLen;
        *p = 0;
        p += 9;
        scriptLen = 0x14;
        *(u16 *)p = scriptLen;
        _Actor_SetScript(actor, Data_9f0b0);
    }

    {
        register int *bufp asm("r6") = pos;
        register int *buf asm("r8");
        register int count asm("r7");
        register u32 baseVel asm("sl");

        asm volatile(
            "mov r0, #0x80\n\t"
            "lsl r0, r0, #9\n\t"
            "mov r8, r6\n\t"
            "mov r7, #0xb\n\t"
            "mov sl, r0"
            : "=r"(buf), "=r"(count), "=r"(baseVel)
            : "r"(bufp)
            : "r0");

        do {
            register int *lo asm("r3") = buf;
            register u8 *particle asm("r6") = CreateParticleActor(0x11d, lo[0], lo[1], lo[2]);
            if (particle != 0) {
                register int rnd asm("r0");

                _Actor_SetScript(particle, L9f0d4);
                rnd = Random();
                asm volatile(
                    "mov r2, r6\n\t"
                    "add r2, #0x55\n\t"
                    "mov r4, sl\n\t"
                    "mov r3, #0\n\t"
                    "add r0, sl\n\t"
                    "str r4, [r6, #0x34]\n\t"
                    "str r0, [r6, #0x30]\n\t"
                    "strb r3, [r2]"
                    :
                    : "r"(particle), "r"(baseVel), "r"(rnd)
                    : "r2", "r3", "r4", "memory");
                asm volatile(
                    "bl Random\n\t"
                    "lsl r5, r0, #1\n\t"
                    "add r5, r0\n\t"
                    "mov r0, #0x80\n\t"
                    "lsl r0, #12\n\t"
                    "lsl r5, #3\n\t"
                    "add r5, r0\n\t"
                    "bl Random\n\t"
                    "mov r1, r5\n\t"
                    "mov r2, r0\n\t"
                    "mov r0, r6\n\t"
                    "bl Func_8096bec"
                    :
                    : "r"(particle)
                    : "r0", "r1", "r2", "r3", "r5", "lr", "memory", "cc");
            }
            count--;
        } while (count >= 0);
    }

    return 0;
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001f30;
extern void Func_8097384(void);
extern u8 *Func_809a3c4(int x, int y, int z, int finalAngle);
extern void WaitFrames(int frames);
extern void Func_8096bec(u8 *actor, u32 magnitude, u16 random);
extern void _Actor_WaitMovement(u8 *actor);
extern void _PlaySound(int sound);
extern u8 *CreateParticleActor(int type, int x, int y, int z);
extern void _Actor_SetScript(u8 *actor, const void *script);
extern const u8 L9f0d4[] asm(".L9f0d4");
extern int Random(void);
extern void _DeleteActor(u8 *actor);
extern void Func_809748c(void);

void Field_Carry(void)
{
    register u8 *actor asm("r10");
    register int *pos asm("r5");
    register int r11_stash asm("r11");
    int frame[5];

    actor = iwram_3001f30;
    Func_8097384();

    asm volatile(
        "mov r3, %2\n\t"
        "ldr r0, [r3, #4]\n\t"
        "add r5, sp, #8\n\t"
        "str r0, [r5]\n\t"
        "ldr r1, [r3, #8]\n\t"
        "mov r3, #0x80\n\t"
        "lsl r3, r3, #13\n\t"
        "add r1, r1, r3\n\t"
        "str r1, [r5, #4]\n\t"
        "mov r3, %2\n\t"
        "ldr r2, [r3, #12]\n\t"
        "mov r3, #0x80\n\t"
        "lsl r3, r3, #14\n\t"
        "add r0, r0, r3\n\t"
        "mov r3, #0x80\n\t"
        "str r2, [r5, #8]\n\t"
        "lsl r3, r3, #8\n\t"
        "bl Func_809a3c4\n\t"
        "ldr r3, =0xffe00000\n\t"
        "str r0, [sp]\n\t"
        "ldr r0, [r5]\n\t"
        "ldr r1, [r5, #4]\n\t"
        "add r0, r0, r3\n\t"
        "ldr r2, [r5, #8]\n\t"
        "mov r3, #0\n\t"
        "bl Func_809a3c4\n\t"
        "str r0, [sp, #4]\n\t"
        "mov r0, #0xf\n\t"
        "mov r11, sp\n\t"
        "bl WaitFrames"
        : "=r"(pos), "=r"(r11_stash)
        : "r"(actor)
        : "r0", "r1", "r2", "r3", "lr", "memory");

    {
        register int *p asm("r7");
        register int n asm("r8");
        asm volatile(
            "mov r0, #1\n\t"
            "mov r7, %2\n\t"
            "mov r8, r0"
            : "=r"(p), "=r"(n)
            : "r"(r11_stash)
            : "r0");
        for (;;) {
            register u8 *r asm("r6");
            r = *(u8 **)p;
            p++;
            if (r != 0) {
                Func_8096bec(r, 0x180000, *(u16 *)(r + 6));
            }
            {
                register int t asm("r0");
                asm volatile(
                    "mov r3, #1\n\t"
                    "neg r3, r3\n\t"
                    "add r8, r3\n\t"
                    "mov r0, r8"
                    : "=r"(t), "+r"(n)
                    :
                    : "r3", "cc");
                if (t < 0) {
                    break;
                }
            }
        }
    }

    {
        register int *p asm("r7");
        register int n asm("r8");
        register int k asm("r9");
        asm volatile(
            "ldr r0, [sp]\n\t"
            "bl _Actor_WaitMovement\n\t"
            "mov r0, #0x86\n\t"
            "bl _PlaySound\n\t"
            "mov r0, #0x80\n\t"
            "mov r3, #0x17\n\t"
            "lsl r0, r0, #10\n\t"
            "add r7, %3, #0\n\t"
            "mov r8, r3\n\t"
            "mov r9, r0"
            : "=r"(p), "=r"(n), "=r"(k)
            : "r"(pos)
            : "r0", "r1", "r2", "r3", "lr", "memory", "cc");
        for (;;) {
            register u8 *particle asm("r6");
            register int magReg asm("r5");
            asm volatile(
                "mov r3, %2\n\t"
                "ldr r1, [r3, #4]\n\t"
                "str r1, [%3, #0]\n\t"
                "mov r0, #0x80\n\t"
                "ldr r2, [r3, #8]\n\t"
                "lsl r0, r0, #13\n\t"
                "add r2, r2, r0\n\t"
                "str r2, [%3, #4]\n\t"
                "ldr r3, [r3, #0xc]\n\t"
                "ldr r0, =0x11d\n\t"
                "str r3, [%3, #8]\n\t"
                "bl CreateParticleActor\n\t"
                "mov r6, r0\n\t"
                "cmp r6, #0\n\t"
                "beq 1f\n\t"
                "ldr r1, =.L9f0d4\n\t"
                "bl _Actor_SetScript\n\t"
                "bl Random\n\t"
                "mov r3, %4\n\t"
                "mov r2, r6\n\t"
                "add r2, #0x55\n\t"
                "str r3, [r6, #0x34]\n\t"
                "add r0, %4\n\t"
                "mov r3, #0\n\t"
                "str r0, [r6, #0x30]\n\t"
                "strb r3, [r2, #0]\n\t"
                "bl Random\n\t"
                "lsl r5, r0, #1\n\t"
                "add r5, r5, r0\n\t"
                "mov r0, #0x80\n\t"
                "lsl r0, r0, #12\n\t"
                "lsl r5, r5, #3\n\t"
                "add r5, r5, r0\n\t"
                "bl Random\n\t"
                "mov r1, r5\n\t"
                "mov r2, r0\n\t"
                "mov r0, r6\n\t"
                "bl Func_8096bec\n\t"
                "1:"
                : "=r"(particle), "=r"(magReg)
                : "r"(actor), "r"(p), "r"(k)
                : "r0", "r1", "r2", "r3", "lr", "memory", "cc");
            {
                register int t asm("r0");
                asm volatile(
                    "mov r3, #1\n\t"
                    "neg r3, r3\n\t"
                    "add r8, r3\n\t"
                    "mov r0, r8"
                    : "=r"(t), "+r"(n)
                    :
                    : "r3", "cc");
                if (t < 0) {
                    break;
                }
            }
        }
    }

    _DeleteActor((u8 *)frame[0]);
    {
        register int v asm("r0");
        asm volatile(
            "mov r3, r11\n\t"
            "ldr r0, [r3, #4]"
            : "=r"(v)
            : "r"(r11_stash)
            : "r3");
        _DeleteActor((u8 *)v);
    }
    Func_809748c();
}

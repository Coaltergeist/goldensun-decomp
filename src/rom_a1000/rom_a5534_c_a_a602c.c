typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001f2c;
extern void Func_80a1ac0(int x, int y);
extern void *_GetUnit(int id);
extern int Func_80a68ec(void *unit, void *data, int mode);
extern int Func_80a60d4(void *a, void *b);
extern void Func_80a17c4(void *object);
extern void WaitFrames(int frames);

int Func_80a602c(int param_1)
{
    register int param0 asm("r0") = param_1;
    register int offset asm("r4");
    register u32 shifted asm("r8");
    register u8 *state asm("r7");
    register int selected asm("r1");
    register int negone asm("r2");
    register int index asm("r6");
    void *unit;

    asm volatile(
        "ldr r3, =iwram_3001f2c\n\t"
        "mov r4, r0\n\t"
        "lsl r0, #2\n\t"
        "mov r8, r0\n\t"
        "ldr r7, [r3]\n\t"
        "mov r3, r8\n\t"
        "add r3, #0x14\n\t"
        "ldr r0, [r7, r3]\n\t"
        "mov r5, #0\n\t"
        "mov r3, #1\n\t"
        "strb r3, [r0, #5]\n\t"
        "strh r5, [r0, #0xc]"
        : "=r"(shifted), "=r"(state), "=r"(offset)
        : "r"(param0)
        : "r3", "r5", "memory");

    asm volatile(
        "mov r0, #0x87\n\t"
        "lsl r0, #2\n\t"
        "add r3, r7, r0\n\t"
        "ldr r2, [r3]\n\t"
        "sub r0, #3\n\t"
        "mov r3, #0xd\n\t"
        "strb r3, [r2, #5]\n\t"
        "add r3, r7, r0\n\t"
        "ldrb r3, [r3]\n\t"
        "add r4, #0x1c\n\t"
        "add r2, r7, #2\n\t"
        "ldrsb r1, [r7, r4]\n\t"
        "strb r3, [r2, r4]"
        : "+r"(offset), "=r"(selected)
        : "r"(state)
        : "r0", "r2", "r3", "memory");

    asm volatile("mov r2, #1\n\tneg r2, r2" : "=r"(negone));

    asm volatile(
        "cmp r1, r2\n\t"
        "bne 1f\n\t"
        "ldr r3, 2f\n\t"
        "mov r6, #0\n\t"
        "strb r3, [r7, r4]\n\t"
        "b 3f\n\t"
        ".align 2, 0\n\t"
        "2: .word 0\n\t"
        ".pool\n\t"
        "1:\n\t"
        "lsl r6, r1, #1\n\t"
        "add r0, r6, r1\n\t"
        "lsl r0, #3\n\t"
        "sub r0, #0xa\n\t"
        "mov r1, #0x10\n\t"
        "bl Func_80a1ac0\n\t"
        "3:"
        : "=r"(index)
        : "r"(selected), "r"(negone), "r"(state), "r"(offset)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    {
        register int unitId asm("r0");
        register int baseOff asm("r5");
        asm volatile(
            "mov r5, #0x82\n\t"
            "lsl r5, #2\n\t"
            "add r3, r6, r5\n\t"
            "ldrh r0, [r7, r3]"
            : "=r"(unitId), "=r"(baseOff)
            : "r"(state), "r"(index)
            : "r3");
        unit = _GetUnit(unitId);

        {
            register void *list asm("r6");
            asm volatile(
                "mov r3, #0xe4\n\t"
                "lsl r3, #1\n\t"
                "add r6, r7, r3"
                : "=r"(list)
                : "r"(state)
                : "r3");

            {
                register int result0 asm("r0") = Func_80a68ec(unit, list, 2);
                register void *flagPtr asm("r3");
                register void *ptr208 asm("r0");
                register void *listArg asm("r1");
                asm volatile(
                    "mov r2, #0x86\n\t"
                    "lsl r2, #2\n\t"
                    "add r3, r7, r2\n\t"
                    "add r5, r7, r5\n\t"
                    "mov r1, r6\n\t"
                    "strb r0, [r3]\n\t"
                    "mov r0, r5"
                    : "=r"(flagPtr), "+r"(baseOff), "=r"(ptr208), "=r"(listArg)
                    : "r"(state), "r"(result0), "r"(list)
                    : "r2");

                {
                    register int callResult asm("r0") = Func_80a60d4(ptr208, listArg);
                    register void *object asm("r0");
                    register int retval asm("r5");
                    asm volatile(
                        "mov r3, r8\n\t"
                        "add r3, #0x14\n\t"
                        "mov r5, r0\n\t"
                        "ldr r0, [r7, r3]"
                        : "=r"(object), "=r"(retval)
                        : "r"(shifted), "r"(state), "r"(callResult)
                        : "r3");
                    Func_80a17c4(object);
                    WaitFrames(1);
                    return retval;
                }
            }
        }
    }
}

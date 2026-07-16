typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

void *Func_80a1778();
s32 Func_80a1814();
void Func_80a1870();
s32 _CreateUIBox();
s32 _Func_801eb64();
void _Func_801ec6c();
extern void *iwram_3001f2c;

void Func_80a6794(void)
{
    register u32 *output asm("r6");
    register s32 box asm("r8");
    register s32 i asm("r5");
    register s32 x asm("r7");
    register s32 call_arg asm("r9");
    u32 stack_pad;
    register void *item asm("r0");
    register u8 *state asm("r10");

    state = iwram_3001f2c;
    i = 0;
    Func_80a1870(Func_80a1814(state), 2, 2, 8, i);
    output = (u32 *)2;
    item = (void *)_CreateUIBox(0, 5, 0x1e, 0xf, (s32)output);
    asm volatile(
        "mov r3, #0x88\n\t"
        "lsl r3, #1\n\t"
        "mov r2, %2\n\t"
        "add r3, %2\n\t"
        "str %0, [r2, #0x20]\n\t"
        "strb %3, [r3]\n\t"
        "ldr r3, =0x111\n\t"
        "mov r2, #0x89\n\t"
        "add r3, %2\n\t"
        "lsl r2, #1\n\t"
        "strb %3, [r3]\n\t"
        "add r2, %2\n\t"
        "mov r3, #8\n\t"
        "strb r3, [r2]\n\t"
        "ldr r3, =0x113\n\t"
        "add r3, %2\n\t"
        "strb %4, [r3]\n\t"
        "mov r1, #0\n\t"
        "mov r2, #4\n\t"
        "mov %1, %0\n\t"
        "bl Func_80a1778"
        : "+r"(item), "=r"(box)
        : "r"(state), "r"(i), "r"(output)
        : "r1", "r2", "r3", "r12", "lr", "cc", "memory");
    asm volatile(
        "mov r3, #0xd\n\t"
        "strb r3, [r0, #5]\n\t"
        "mov r3, r10\n\t"
        "str r0, [r3, #0x44]"
        :
        :
        : "r3", "memory");
    asm volatile("" : : "m"(stack_pad));
    asm volatile(
        "mov r2, #0\n\t"
        "mov r0, #0\n\t"
        "mov r1, #0\n\t"
        "mov r3, r8\n\t"
        "str r5, [sp]\n\t"
        "str r5, [sp, #4]\n\t"
        "mov r6, r10\n\t"
        "bl _Func_801ec6c"
        : "=r"(output)
        : "r"(state), "r"(box), "r"(i)
        : "r0", "r1", "r2", "r3", "memory");
    asm volatile(
        "mov r2, #8\n\t"
        "mov r9, r2\n\t"
        "add r6, #0x48\n\t"
        "mov r7, #0x60"
        : "+r"(output), "=r"(x), "=r"(call_arg)
        :
        : "r2", "memory");
    do {
        *output++ = _Func_801eb64(4, i, box, x, call_arg);
        i++;
        x += 0x10;
    } while (i <= 7);

    asm volatile(
        "mov r2, #0x18\n\t"
        "mov r6, r10\n\t"
        "mov r5, #8\n\t"
        "mov r9, r2\n\t"
        "add r6, #0x68\n\t"
        "mov r7, #0x60"
        : "+r"(output), "+r"(state), "+r"(i), "+r"(x),
          "+r"(call_arg)
        :
        : "r2", "memory");
    do {
        *output++ = _Func_801eb64(4, i, box, x, call_arg);
        i++;
        x += 0x10;
    } while (i <= 0xf);
}

typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e64;
extern int Func_800eba0(void);

int Func_800d924(u8 *argument, int mode_argument)
{
    register u8 *actor asm("r5") = iwram_3001e64;
    register u8 *flags asm("r6") = actor;
    register u8 *target asm("r7");
    register int mode asm("r8");
    register int i asm("r4");
    register int result asm("r0");

    __asm__ volatile ("sub sp, #4" : : : "memory");
    __asm__ volatile ("mov %0, %2\n\tmov %1, %3"
                      : "=r" (target), "=r" (mode)
                      : "r" (argument), "r" (mode_argument));
    __asm__ volatile ("mov %0, #0\n\tadd %1, #0x59"
                      : "=r" (i), "+r" (flags));
    do {
        if (*(int *)actor != 0 &&
            (*flags & 1) != 0 &&
            actor != target) {
            __asm__ volatile (
                "ldrh r1, [r5, #0x20]\n\t"
                "ldrh r3, [r7, #0x20]\n\t"
                "mov r0, r5\n\t"
                "add r0, #8\n\t"
                "sub r1, #2\n\t"
                "sub r3, #2\n\t"
                "mov r2, r8\n\t"
                "str r4, [sp]"
                : : : "r0", "r1", "r2", "r3", "memory");
            result = Func_800eba0();
            __asm__ volatile ("ldr r4, [sp]" : : : "r4", "memory");
            if (result >= 0) {
                result = -1;
                goto done;
            }
        }
        i++;
        flags += 0x70;
        actor += 0x70;
    } while (i <= 0x3f);
    result = 0;
done:
    __asm__ volatile ("add sp, #4" : : : "memory");
    return result;
}

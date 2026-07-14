typedef unsigned int u32;

extern void *__MapActor_GetActor(int index);
extern void *GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern u32 __Random(void);
extern int __cos(int angle);
extern int __sin(int angle);
extern int Sin_NoArgs(void) asm("__sin");
extern volatile u32 iwram_3001e40;
extern void OvlFunc_common0_10c(u32 x, u32 y, u32 z, int dx,
                               int zero1, int dy, int zero2, int zero3);
extern void Common0_NoArgs(void) asm("OvlFunc_common0_10c");

void OvlFunc_939_20092a4(void)
{
    register u32 *actor asm("r8");
    register int index asm("r0") = 0;
    int zero;

    asm volatile("" : "+r"(index));
    asm volatile("sub sp, sp, #28");
    actor = GetActor_NoArgs();
    zero = iwram_3001e40 & 15;

    if (zero == 0) {
        register int random asm("r0") = __Random();
        register int angle asm("r5");
        register int *v asm("r6");

        asm volatile("mov r3, #52\n\t"
                     "mul r3, r0\n\t"
                     "lsr r3, r3, #16\n\t"
                     "lsl r3, r3, #6\n\t"
                     "mov r5, r3\n\t"
                     "add r5, r5, #230"
                     : "=r"(angle) : "r"(random) : "r3");
        {
            register int dx asm("r0") = __cos(angle);
            asm volatile("add r6, sp, #16" : "=r"(v));
            if (dx < 0)
                dx += 3;
            asm volatile("asr r3, r0, #2\n\t"
                         "mov r0, r5\n\t"
                         "str r3, [r6]\n\t"
                         "str r7, [r6, #4]"
                         : : "r"(dx), "r"(angle), "r"(v), "r"(zero)
                         : "r0", "r3");
        }
        {
            register int dy asm("r0") = Sin_NoArgs();
            asm volatile("lsr r3, r0, #31\n\tadd r0, r0, r3\n\tasr r0, r0, #1"
                         : "+r"(dy) : : "r3");
            v[2] = dy;
        asm volatile("mov r3, r8\n\t"
                     "ldr r5, [r3, #8]\n\t"
                     "ldr r4, [r6, #4]\n\t"
                     "ldr r1, [r3, #12]\n\t"
                     "ldr r2, [r3, #16]\n\t"
                     "ldr r3, [r6]\n\t"
                     "str r0, [sp, #4]\n\t"
                     "mov r0, r5\n\t"
                     "str r4, [sp]\n\t"
                     "str r7, [sp, #8]\n\t"
                     "str r7, [sp, #12]"
                     : : "r"(actor), "r"(v), "r"(dy), "r"(zero)
                     : "r0", "r1", "r2", "r3", "r4", "r5");
        }
        Common0_NoArgs();
    }
    asm volatile("add sp, sp, #28");
}

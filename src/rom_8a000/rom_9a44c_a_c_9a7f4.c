typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern int cos(void);
extern int sin(int);
extern int Func_8000888(int, int);
extern int Random(void);
extern void Func_809a738(void);

void Func_809a7f4(u8 *object)
{
    register u8 *self asm("r7") = object;
    register u8 *origin asm("r9");
    register int angle asm("r6");
    register int radius asm("r10");
    register int (*scale)(int, int) asm("r5");
    register int xOffset asm("r8");
    int yOffset;

    asm volatile("ldr r0, [r7, #0x68]\n\tldrh r6, [r7, #6]\n\tmov r2, #0x80\n\tlsl r2, #12\n\tmov r9, r0\n\tmov r0, r6\n\tmov r10, r2"
                 : "=r" (origin), "=r" (angle), "=r" (radius) : "r" (self) : "r0", "r2");
    {
        register int trig asm("r0") = cos();
        register int firstArg asm("r0");
        register int secondArg asm("r1");
        asm volatile("ldr r5, =Func_8000888\n\tmov r1, r0\n\tmov r0, r10"
                     : "=r" (scale), "=r" (firstArg), "=r" (secondArg)
                     : "r" (trig), "r" (radius));
        asm volatile("mov r12, pc\n\tbx r5"
                     : "=r" (firstArg) : "0" (firstArg), "r" (secondArg), "r" (scale) : "r12", "lr");
        xOffset = firstArg;
    }
    {
        register int trig asm("r0") = sin(angle);
        register int firstArg asm("r0");
        register int secondArg asm("r1");
        asm volatile("mov r1, r0\n\tmov r0, r10"
                     : "=r" (firstArg), "=r" (secondArg)
                     : "r" (trig), "r" (radius), "r" (scale));
        asm volatile("mov r12, pc\n\tbx r5"
                     : "=r" (firstArg) : "0" (firstArg), "r" (secondArg), "r" (scale) : "r12", "lr");
        yOffset = firstArg;
    }
    {
        register u8 *base asm("r2") = origin;
        *(int *)(self + 8) = *(int *)(base + 8) + xOffset;
        *(int *)(self + 0x10) = *(int *)(base + 0x10) + yOffset;
    }
    asm volatile("mov r0, #0x80\n\tldrh r3, [r7, #6]\n\tlsl r0, #4\n\tadd r3, r0\n\tstrh r3, [r7, #6]"
                 : : "r" (self) : "r0", "r3", "memory");
    {
        register u16 *counterPtr asm("r2");
        register u32 shifted asm("r3");
        register u32 limit asm("r0");
        register int zero asm("r1");
        asm volatile("mov r2, r7\n\tadd r2, #0x64\n\tldrh r3, [r2]\n\tmov r0, #0xf2\n\tadd r3, #1\n\tstrh r3, [r2]\n\tlsl r0, #15\n\tlsl r3, #16\n\tmov r1, #0"
                     : "=r" (counterPtr), "=r" (shifted), "=r" (limit), "=r" (zero)
                     : "r" (self) : "memory");

        if (shifted == limit) {
            asm volatile("ldr r3, =Func_809a738\n\tstr r3, [r7, #0x6c]\n\tmov r3, r7\n\tadd r3, #0x66\n\tstrh r1, [r2]\n\tstrh r1, [r3]\n\tldr r3, =0x1999\n\tstr r3, [r7, #0x48]\n\tmov r3, #0xc0\n\tlsl r3, #10\n\tstr r3, [r7, #0x28]"
                         : : "r" (self), "r" (counterPtr), "r" (zero) : "r3", "memory");
            *(u16 *)(self + 6) = Random();
        }
    }
}

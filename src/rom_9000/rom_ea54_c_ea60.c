typedef signed short s16;
typedef unsigned int u32;

extern unsigned char iwram_3001ebc[];
extern volatile u32 gKeyPress;
extern int _GetFlag(int);

int Func_800ea60(u32 packed)
{
    register u32 input asm("r0") = packed;
    register int value asm("r7");
    register int selector asm("r6");
    register unsigned char *state asm("r5");
    register int flag asm("r0");

    asm volatile("ldr r7, =0x3fff\n\tldr r3, =iwram_3001ebc\n\tlsr r6, r0, #14\n\tand r7, r0\n\tldr r0, =0x107\n\tldr r5, [r3]"
                 : "=r" (value), "=r" (selector), "=r" (state), "=r" (flag)
                 : "r" (input) : "r3");

    if (_GetFlag(flag)) {
        asm volatile("mov r3, #0xc1\n\tlsl r3, #1\n\tadd r2, r5, r3\n\tmov r3, #0xfa\n\tstrh r3, [r2]"
                     : : "r" (state) : "r2", "r3");
    } else if (*(s16 *)(state + 0x19e) == 3) {
        register volatile u32 *keys asm("r1");
        register u32 pressed asm("r3");
        asm volatile("ldr r1, =gKeyPress\n\tmov r2, #0x80\n\tldr r3, [r1]\n\tlsl r2, #1\n\tand r3, r2"
                     : "=r" (keys), "=r" (pressed) : : "r2");
        if (pressed)
            asm volatile("mov r3, #0xc1\n\tlsl r3, #1\n\tadd r2, r5, r3\n\tldr r3, =0xfc88\n\tstrh r3, [r2]"
                         : : "r" (state) : "r2", "r3");
        else {
            asm volatile("ldr r3, [r1]\n\tmov r2, #0x80\n\tlsl r2, #2\n\tand r3, r2"
                         : "=r" (pressed) : "r" (keys) : "r2");
            if (pressed)
                asm volatile("mov r3, #0xc1\n\tlsl r3, #1\n\tadd r2, r5, r3\n\tldr r3, =0xfc87\n\tstrh r3, [r2]"
                             : : "r" (state) : "r2", "r3");
        }
    } else {
        register int offset asm("r2");
        switch (selector) {
        case 0:
            offset = 0xbf;
            break;
        case 1:
            offset = 0xc0;
            break;
        default:
            goto done;
        }
        asm volatile("lsl r2, #1\n\tadd r3, r5, r2\n\tstrh r7, [r3]"
                     : "+r" (offset) : "r" (state), "r" (value) : "r3");
    }

done:
    return value;
}

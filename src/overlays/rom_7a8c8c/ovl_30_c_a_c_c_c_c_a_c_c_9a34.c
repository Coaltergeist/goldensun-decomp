typedef unsigned char u8;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern int __GetFlag(int flag);
extern void OvlFunc_922_2009ad0(int x, int y);

void OvlFunc_922_2009a34(void)
{
    register u8 *state asm("r5");
    register int scene asm("r6");
    register int stateValue asm("r2");
    register int limit asm("r3");
    asm volatile("ldr r3, =iwram_3001ebc\n\tmov r1, #0xb6\n\tldr r3, [r3]\n\tlsl r1, #1\n\tldr r5, =gState\n\tadd r3, r1\n\tadd r1, #0x54\n\tmov r2, #0\n\tldrsh r6, [r3, r2]\n\tadd r3, r5, r1\n\tmov r1, #0\n\tldrsh r2, [r3, r1]\n\tldr r3, =0x3f"
                 : "=r"(state), "=r"(scene), "=r"(stateValue), "=r"(limit));
    if (stateValue == limit) {
        if (scene == 0x11)
            OvlFunc_922_2009ad0(0, -0x20);
        else
            OvlFunc_922_2009ad0(-0x20, 0);
    }
    asm volatile("mov r2, #0xe0\n\tlsl r2, #1\n\tadd r3, r5, r2\n\tmov r1, #0\n\tldrsh r2, [r3, r1]\n\tldr r3, =0x40"
                 : "=r"(stateValue), "=r"(limit) : "r"(state));
    if (stateValue == limit && scene == 0x19) {
        register int flag asm("r0");
        asm volatile("ldr r0, =0x309" : "=r"(flag));
        if (__GetFlag(flag) != 0)
            OvlFunc_922_2009ad0(0, 0x20);
    }
}

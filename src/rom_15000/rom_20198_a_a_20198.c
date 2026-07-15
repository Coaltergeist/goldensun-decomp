typedef unsigned char u8;
typedef unsigned int u32;

extern void Func_8016478(void *box);
extern void Func_801e41c(void *, int, int, int, int);
extern void Func_801e8b0(void *, void *, int, int);
extern void UIDrawText(const void *, void *, int, int);
extern void Func_801e9d4(int, int, void *, int, int);
extern void Func_801e7c0(int, void *, int, int);
extern void Func_801e8b0_abi(void) asm("Func_801e8b0");
extern void UIDrawText_abi(void) asm("UIDrawText");
extern void Func_801e9d4_abi(void) asm("Func_801e9d4");
extern void Func_801e7c0_abi(void) asm("Func_801e7c0");
extern char *Func_801f680(u32, char *);
extern void Func_801ea08(u32, int, void *, int, int);
extern const u8 L371e0[] asm(".L371e0");

void Func_8020198(void *box, u8 *data)
{
    char text[16];
    register void *boxReg asm("r5") = box;
    register u8 *dataReg asm("r7") = data;
    register int scratch asm("r6");

    if (boxReg != 0) {
        Func_8016478(boxReg);
        Func_801e41c(boxReg, 0, 4, 0xd, 4);
        asm volatile("mov r0, r7\n\tadd r0, #0x10\n\tmov r1, r5\n\t"
                     "mov r2, #0\n\tmov r3, #0"
                     : : : "r0", "r1", "r2", "r3");
        Func_801e8b0_abi();
        asm volatile("ldr r0, =.L371e0\n\tmov r1, r5\n\t"
                     "mov r2, #0x48\n\tmov r3, #0"
                     : : : "r0", "r1", "r2", "r3");
        UIDrawText_abi();
        asm volatile("mov r6, #0\n\tldrb r0, [r7, #0x1c]\n\t"
                     "mov r1, #2\n\tmov r2, r5\n\tmov r3, #0x50\n\t"
                     "str r6, [sp]"
                     : : : "r0", "r1", "r2", "r3", "memory");
        Func_801e9d4_abi();
        asm volatile("ldr r3, =0x741\n\tldrb r0, [r7, #0x1d]\n\t"
                     "mov r1, r5\n\tadd r0, r3\n\tmov r2, #0\n\t"
                     "mov r3, #0x10"
                     : : : "r0", "r1", "r2", "r3");
        Func_801e7c0_abi();
        {
            asm volatile("mov r2, #0\n\tmov r3, #0x20\n\t"
                         "ldr r0, =9\n\tmov r1, r5"
                         : : : "r0", "r1", "r2", "r3");
            Func_801e7c0_abi();
        }
        UIDrawText(Func_801f680(*(u32 *)(dataReg + 0x20), text),
                   boxReg, 0x30, 0x28);
        scratch = 0x30;
        Func_801ea08(*(u32 *)(dataReg + 0x24), 6, boxReg, 0, scratch);
        {
            register int label asm("r0");
            asm volatile("ldr %0, =0xc88" : "=r"(label));
            Func_801e7c0(label, boxReg, 0x30, 0x30);
        }
    }
}

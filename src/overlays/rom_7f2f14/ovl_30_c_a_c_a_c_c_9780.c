typedef unsigned char u8;
extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __MessageID(int id);
extern void __Func_809280c(int actor, int a, int b);
extern void __CutsceneWait(int frames);
extern void __Func_8093040(int actor, int a, int b);
extern void __Func_8092adc(int actor, int a, int b);
extern void __Func_80933d4(int a, int b);
extern void __Func_80933f8(int a, int b, int c, int d);
extern void __Func_8093530(void);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_968_2009780(void)
{
    asm volatile("ldr r3, =iwram_3001ebc\n\tldr r2, [r3]\n\tldr r3, =0xcba\n\tadd r1, r2, r3\n\tmov r3, #0\n\tstrh r3, [r1]\n\tldr r3, =0xcb6\n\tadd r2, r3\n\tmov r3, #1\n\tstrh r3, [r2]" ::: "r1", "r2", "r3", "memory");
    __CutsceneStart();
    { register int message asm("r0");
      asm volatile("ldr r0, =0x267d" : "=r"(message));
      __MessageID(message); }
    __Func_809280c(10, 0, 0);
    __CutsceneWait(10);
    __Func_8093040(10, 0, 20);
    { register int actor asm("r0"); register int amount asm("r1"); register int zero asm("r2");
      asm volatile("mov r1, #0xe0\n\tmov r2, #0\n\tmov r0, #0xa\n\tlsl r1, #8"
                   : "=r"(actor), "=r"(amount), "=r"(zero));
      __Func_8092adc(actor, amount, zero); }
    __Func_80933d4(0x10000, 0x2000);
    __Func_80933f8(0x1c00000, -1, 0x1b00000, 1);
    __Func_8093530();
    __ActorMessage(10, 0);
    __CutsceneEnd();
}

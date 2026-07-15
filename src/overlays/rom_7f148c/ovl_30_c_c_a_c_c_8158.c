typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed short s16;
typedef signed int s32;
extern u8 iwram_3001ebc[];
extern s16 L1ca8[][2] asm(".L1ca8");
extern u8 L1cee[] asm(".L1cee");
extern u8 L1cd8[] asm(".L1cd8");
extern u8 *__MapActor_GetActor(s32);
extern void __PlaySound(s32);
extern void __Func_8010560(u8 *, s32, s32);
extern void __Func_80922c4(s32, s32, s32);
extern void __Func_8092208(s32, s32, s32);
extern void __CutsceneWait(s32);
extern void __Func_8091e9c(s32);

void OvlFunc_966_2008158(void)
{
    register s32 index asm("r7") = *(s16 *)(*(u8 **)iwram_3001ebc + 0x16c);
    register s32 x asm("r5") = L1ca8[index][0];
    register s32 y asm("r6") = L1ca8[index][1];
    __MapActor_GetActor(0)[0x55] = 2;
    __PlaySound(0x9e);
    if (index == 6) {
        register s32 xArg asm("r1");
        register s32 yArg asm("r2");
        register u8 *image asm("r0");
        asm volatile("lsl r1, r5, #16\n\tlsl r2, r6, #16\n\tlsr r1, r1, #16\n\tlsr r2, r2, #16\n\tldr r0, =.L1cee"
                     : "=r" (image), "=r" (xArg), "=r" (yArg) : "r" (x), "r" (y));
        __Func_8010560(image, xArg, yArg);
        {
            register s32 amount asm("r2");
            register s32 first asm("r0");
            register s32 second asm("r1");
            asm volatile("mov r2, #0x10\n\tmov r0, #0\n\tmov r1, #0\n\tneg r2, r2"
                         : "=r" (first), "=r" (second), "=r" (amount));
            __Func_80922c4(first, second, amount);
        }
    } else {
        register s32 xArg asm("r1");
        register s32 yArg asm("r2");
        register u8 *image asm("r0");
        asm volatile("lsl r1, r5, #16\n\tlsl r2, r6, #16\n\tlsr r1, r1, #16\n\tlsr r2, r2, #16\n\tldr r0, =.L1cd8"
                     : "=r" (image), "=r" (xArg), "=r" (yArg) : "r" (x), "r" (y));
        __Func_8010560(image, xArg, yArg);
        {
            register s32 amount asm("r2");
            register s32 first asm("r0");
            register s32 second asm("r1");
            asm volatile("mov r2, #0x10\n\tmov r0, #0\n\tmov r1, #2\n\tneg r2, r2"
                         : "=r" (first), "=r" (second), "=r" (amount));
            __Func_8092208(first, second, amount);
        }
    }
    __CutsceneWait(10);
    *(s32 *)(*(u8 **)iwram_3001ebc + 0x1c8) = 0x10;
    __Func_8091e9c(index);
}

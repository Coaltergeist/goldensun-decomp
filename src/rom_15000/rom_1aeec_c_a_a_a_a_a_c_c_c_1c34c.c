extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];
extern int _GetLocationName(int, int);
extern void TextBox(int, int *, int *, int *);
extern int CreateUIBox(int, int, int, int);
extern void DrawSmallText(int, int, int, int);
extern void StartTask(void (*)(void), int);
extern void Func_801c3e8(void);

void Func_801c34c(void)
{
    register unsigned char *state asm("r6") = *(unsigned char **)iwram_3001ebc;
    int boxHeight;
    int boxWidth;
    int top;
    int left;
    int outgoingSlot;
    int textId;
    int box;
    register int locationX asm("r0");
    register int locationY asm("r1");

    asm volatile("ldr r2, =gState\n\tmov r3, #8\n\tmov r1, #0xe0\n\tstr r3, [sp, #0x10]\n\tstr r3, [sp, #0xc]\n\tlsl r1, #1\n\tadd r3, r2, r1\n\tmov r1, #0\n\tldrsh r0, [r3, r1]\n\tmov r1, #0xe1\n\tlsl r1, #1\n\tadd r3, r2, r1\n\tmov r2, #0\n\tldrsh r1, [r3, r2]"
                 : "=r" (locationX), "=r" (locationY) : : "r2", "r3", "memory");

    {
        register int location asm("r0") = _GetLocationName(locationX, locationY);
        register int finalText asm("r5");
        asm volatile("ldr r3, =0x99b\n\tmov r5, r0\n\tadd r5, r3"
                     : "=r" (finalText) : "r" (location) : "r3");
        textId = finalText;
    }
    {
        register int text asm("r0");
        register int *leftArg asm("r1");
        register int *topArg asm("r2");
        register int *widthArg asm("r3");
        asm volatile("add r0, sp, #4\n\tadd r1, sp, #0x10\n\tadd r2, sp, #0xc\n\tadd r3, sp, #8\n\tstr r0, [sp]\n\tmov r0, r5"
                     : "=r" (text), "=r" (leftArg), "=r" (topArg), "=r" (widthArg)
                     : "r" (textId), "m" (boxHeight), "m" (boxWidth), "m" (top), "m" (left),
                       "m" (outgoingSlot)
                     : "memory");
        TextBox(text, leftArg, topArg, widthArg);
    }
    {
        register int boxLeft asm("r0");
        register int boxTop asm("r1");
        register int finalWidth asm("r2");
        register int finalHeight asm("r3");
        asm volatile("ldr r2, [sp, #8]\n\tldr r3, [sp, #4]\n\tmov r0, #0x1e\n\tmov r1, #0xa\n\tsub r0, r2\n\tsub r1, r3\n\tmov r4, #2\n\tasr r1, #1\n\tasr r0, #1\n\tstr r1, [sp, #0xc]\n\tstr r4, [sp]\n\tstr r0, [sp, #0x10]"
                     : "=r" (boxLeft), "=r" (boxTop), "=r" (finalWidth), "=r" (finalHeight)
                     : : "r4", "memory");
        box = CreateUIBox(boxLeft, boxTop, finalWidth, finalHeight);
    }
    *(int *)(state + 0x230) = box;
    DrawSmallText(textId, box, 0, 0);
    {
        register void (*task)(void) asm("r0");
        register int priority asm("r1");
        asm volatile("mov r3, #0x8d\n\tlsl r3, #2\n\tadd r2, r6, r3\n\tmov r1, #0xc8\n\tmov r3, #0x5a\n\tstrh r3, [r2]\n\tlsl r1, #4\n\tldr r0, =Func_801c3e8"
                     : "=r" (task), "=r" (priority) : "r" (state) : "r2", "r3", "memory");
        StartTask(task, priority);
    }
}

typedef unsigned char u8;
typedef unsigned int u32;

extern u8 gState[];
extern volatile u32 gKeyHeld;
extern int __Func_8019da8(int, int, int, int);
extern void __Func_8019908(int, int);
extern void OvlFunc_974_200804c(int);
extern void __WaitFrames(int);
extern void __Func_8019a54(void);
extern void __CloseUIBox(int, int);

void OvlFunc_974_200807c(int selection, int iterations)
{
    register int current asm("r6");
    register int limit asm("r8");
    register int frame asm("r7");
    register int box asm("r10");
    register volatile u32 *keys asm("r5");
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");

    gState[0x20c] = 2;
    current = selection;
    asm volatile("" : "+r"(current), "+r"(iterations) : : "memory");
    limit = iterations;
    asm volatile("" : "+r"(current), "+r"(limit));
    arg0 = 0x7d;
    asm volatile("" : "+r"(arg0));
    arg1 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    arg2 = 0;
    arg3 = 0;
    box = __Func_8019da8(arg0, arg1, arg2, arg3);
    frame = 0;
    if (frame < limit) {
        keys = &gKeyHeld;
        do {
            __Func_8019908(1, 1);
            __Func_8019908(0x8d, 2);
            __Func_8019908(0x1e240, 5);
            OvlFunc_974_200804c(current);
            goto readKeys;

waitForInput:
            if (*keys != 0)
                goto nextFrame;
            __WaitFrames(1);
readKeys:
            if (*keys & 2)
                goto close;
            if ((*keys & 1) || (*keys & 0x80)) {
                current++;
                goto nextFrame;
            }
            if (*keys & 0x40) {
                current--;
                goto nextFrame;
            }
            goto waitForInput;

nextFrame:
            frame++;
        } while (frame < limit);
    }
close:
    __Func_8019a54();
    __CloseUIBox(box, 2);
}

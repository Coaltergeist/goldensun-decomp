extern unsigned char Flag_323[] asm("0x323");
extern int __GetFlag(int flag);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);

void OvlFunc_932_20089ec(void) {
    register int arg0 asm("r0") = (int)Flag_323;
    register int stack0 asm("r3");
    register int stack1 asm("r2");

    if (__GetFlag(arg0) != 0) {
        stack0 = 0x18;
        stack1 = 0x50;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __Func_8010704(2, 0, 1, 1, stack0, stack1);

        stack0 = 1;
        stack1 = 2;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __CopyMapTiles(2, 1, 0x18, 0xb, stack0, stack1);

        arg0 = (int)Flag_323;
        __ClearFlag(arg0);
    } else {
        stack0 = 0x18;
        stack1 = 0x50;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __Func_8010704(0, 0, 1, 1, stack0, stack1);

        stack0 = 1;
        stack1 = 2;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __CopyMapTiles(0, 1, 0x18, 0xb, stack0, stack1);

        arg0 = (int)Flag_323;
        __SetFlag(arg0);
    }
}

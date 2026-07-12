extern unsigned char Flag_325[] asm("0x325");
extern int __GetFlag(int flag);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);

void OvlFunc_932_2008a94(void) {
    register int arg0 asm("r0") = (int)Flag_325;
    register int stack0 asm("r3");
    register int stack1 asm("r2");

    if (__GetFlag(arg0) != 0) {
        stack0 = 0xb;
        stack1 = 0x49;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __Func_8010704(0xc, 0x48, 1, 1, stack0, stack1);

        stack0 = 1;
        stack1 = 2;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __CopyMapTiles(0x30, 0x20, 0xb, 4, stack0, stack1);

        arg0 = (int)Flag_325;
        __ClearFlag(arg0);
    } else {
        stack0 = 0xb;
        stack1 = 0x49;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __Func_8010704(0xa, 0x48, 1, 1, stack0, stack1);

        stack0 = 1;
        stack1 = 2;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __CopyMapTiles(0x31, 0x20, 0xb, 4, stack0, stack1);

        arg0 = (int)Flag_325;
        __SetFlag(arg0);
    }
}

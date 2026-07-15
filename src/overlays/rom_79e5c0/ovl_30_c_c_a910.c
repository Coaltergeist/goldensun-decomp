extern int __GetFlag(int flag);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __Func_8010704(int a, int b, int c, int d);
extern void __CopyMapTiles(int a, int b, int c, int d);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int frames);

void OvlFunc_911_200a910(void)
{
    register int firstFlag asm("r0") = 0x845;
    asm volatile("sub sp, #8" : "+r"(firstFlag));
    if (__GetFlag(firstFlag) == 0) {
        __MapActor_SetPos(8, 0, 0);
        asm volatile("mov r3, #9\n\tmov r2, #0x12\n\tstr r3, [sp]\n\tstr r2, [sp, #4]" : : : "r2", "r3", "memory");
        __Func_8010704(9, 0x11, 5, 1);
        __Func_800fe9c();
        __WaitFrames(1);
    } else {
        __MapActor_SetPos(9, 0, 0);
    }

    if (__GetFlag(0x847) != 0) {
        asm volatile("mov r3, #5\n\tmov r2, #7\n\tstr r3, [sp]\n\tstr r2, [sp, #4]" : : : "r2", "r3", "memory");
        __CopyMapTiles(0x5b, 0x13, 0x48, 9);
        asm volatile("mov r3, #8\n\tmov r2, #0xb\n\tstr r3, [sp]\n\tstr r2, [sp, #4]" : : : "r2", "r3", "memory");
        __Func_8010704(0x17, 0xb, 5, 7);
        __Func_800fe9c();
        __WaitFrames(1);
    }
    asm volatile("add sp, #8");
}

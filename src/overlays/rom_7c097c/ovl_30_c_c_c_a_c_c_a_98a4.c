typedef unsigned char u8;
typedef signed short s16;
extern u8 *iwram_3001ebc;
extern u8 gState[];
extern int __GetFlag(int);
extern void __CopyMapTiles(int,int,int,int,int,int);
extern void __Func_8010704(int,int,int,int,int,int);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int);
extern void __Func_8091ff0(int);
void OvlFunc_936_20098a4(void)
{
    *(int *)(iwram_3001ebc + 0x1c0) = 0x204;
    if (__GetFlag(0x915)) {
        __CopyMapTiles(0x3a,5,0x3a,8,2,3);
        asm volatile("mov r3, #8\n\tmov r2, #0xa\n\tstr r3, [sp]\n\tstr r2, [sp, #4]\n\tmov r0, #8\n\tmov r1, #0xb\n\tmov r2, #2\n\tmov r3, #1\n\tbl __Func_8010704" ::: "r0", "r1", "r2", "r3", "memory");
        __CopyMapTiles(8,0xc,8,0xb,2,1);
        __Func_800fe9c();
        __WaitFrames(1);
    }
    { register int stateValue asm("r3");
      asm volatile("ldr r3, =gState\n\tmov r2, #0xe1\n\tlsl r2, #1\n\tadd r3, r2\n\tmov r2, #0\n\tldrsh r3, [r3, r2]" : "=r"(stateValue) :: "r2");
    if (stateValue <= 3)
        __Func_8091ff0(0xaa);
    }
}

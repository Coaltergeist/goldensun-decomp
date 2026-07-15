typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__Func_8093554(void);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8091200(int, int);
extern void __Func_8091254(int);
extern void __WaitFrames(int);
extern void __Func_800fe9c(void);

void OvlFunc_897_200ac1c(int x, int y)
{
    register int fixedY asm("r8") = y;
    register int fixedX asm("r6") = x;
    register u8 *object asm("r5") = __Func_8093554();
    fixedY <<= 16;
    fixedX <<= 16;
    __Func_80933f8(fixedX, -1, fixedY, 1);
    __Func_8091200(0, 0);
    __Func_8091254(0x14);
    __WaitFrames(0x28);
    *(int *)(object + 0x10) = fixedY;
    *(u32 *)(object + 0x38) = 0x80000000;
    *(u32 *)(object + 0x40) = 0x80000000;
    *(u32 *)(object + 0x24) = 0;
    *(u32 *)(object + 0x2c) = 0;
    *(int *)(object + 8) = fixedX;
    __WaitFrames(5);
    __Func_800fe9c();
    __WaitFrames(5);
    __Func_8091200(0x10000, 0);
    __Func_8091254(0x14);
    __WaitFrames(0x1e);
}

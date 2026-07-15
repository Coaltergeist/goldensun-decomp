typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *iwram_3001e80;
extern int gPhysVec[];
extern void InitMatrixStack(void);
extern void MatrixTranslatev(void *position);
extern void MatrixYaw(int angle);
extern void MatrixPitch(int angle);
extern void Func_80009c0(int *vector, void *camera) __attribute__((long_call));
extern int Func_80008ac(int a, int b) __attribute__((long_call));
extern void Func_8005258(int a, int b, int c);
extern void Func_80c0a24(int x, int y, int z, int angle, int scale);

void Func_80b8fd4(int offset)
{
    u8 **base = &iwram_3001e80;
    u8 *camera = *base;
    int *transition = *(int **)(base + 0x20);
    int vector[3];
    int transformed;

    *(int *)(camera + 0x10) = 0x50000;
    *(int *)(camera + 0xc) = 0;
    *(int *)(camera + 0x14) = 0;
    *(volatile int *)&transition[0] = 0x4000;
    *(volatile u16 *)(camera + 0x36) = 0x4000;
    __asm__ (
        "mov r3, #0xf4\n\t"
        "lsl r3, #8\n\t"
        "strh r3, [%0, #0x34]"
        : "+r" (camera) :: "r3");
    *(int *)(camera + 0x1c) = 0;
    *(int *)(camera + 0x20) = 0x2ee0000;
    *(int *)(camera + 0x18) = 0;

    InitMatrixStack();
    MatrixTranslatev(camera + 0xc);
    MatrixYaw(*(s16 *)(camera + 0x36));
    MatrixPitch(*(s16 *)(camera + 0x34));
    vector[0] = 0;
    vector[1] = 0;
    vector[2] = *(int *)(camera + 0x20);
    Func_80009c0(vector, camera);
    transformed = Func_80008ac(0x3c90000, 0xc000);
    Func_8005258(0, transformed, 0x7920000);

    gPhysVec[4] = offset + 0x78;
    transition[4] = 1;
    Func_80c0a24(0x780000, (0x76 - offset) << 16, 0, 0x800, 0x20000);
    transition[5] = 1;
    transition[4] = 0;
}

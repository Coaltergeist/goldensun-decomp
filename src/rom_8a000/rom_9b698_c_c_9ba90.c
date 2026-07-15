typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

extern void *_CreateSprite(void *template);
extern void Func_809ba5c(u32 arg0, u32 arg1, u32 arg2);
extern void Func_809ba70(u32 *p, u32 unused);
extern u32 Random(void);

void Func_809ba90(u32 *param_1, void *param_2, u32 param_3, u32 param_4)
{
    u32 zero;
    register u32 *src asm("r0") = &zero;
    *src = 0;
    {
        register vu32 *dma asm("r3") = &REG_DMA3SAD;
        register u32 *dst asm("r1") = param_1;
        register u32 cnt asm("r2") = 0x85000012;
        asm volatile(
            "stmia r3!, {r0,r1,r2}\n\t"
            "sub r3, #0xc"
            : "+r"(dma)
            : "r"(src), "r"(dst), "r"(cnt)
            : "memory"
        );
    }

    param_1[0] = (u32)_CreateSprite(param_2);
    if (param_1[0] != 0) {
        u8 *sprite = (u8 *)param_1[0];
        int v = ~0xc;
        v &= sprite[9];
        sprite[9] = v;
    }

    Func_809ba5c((u32)param_1, param_3, param_4);

    param_1[8] = 0x20000;
    {
        register u32 k asm("r2") = 0x10000;
        register u32 iv asm("r3") = param_1[0];
        param_1[10] = k;
        param_1[11] = k;
        param_1[9] = k;
        param_1[5] = param_3;
        param_1[6] = param_4;
        *(u8 *)(iv + 0x26) = 0;
    }

    *((u8 *)param_1 + 0x41) = 1;
    *((u8 *)param_1 + 0x42) = 1;
    *((u8 *)param_1 + 0x43) = 1;
    *((u8 *)param_1 + 0x44) = 1;
    *((u8 *)param_1 + 0x45) = 1;

    *((u8 *)param_1 + 0x46) = (u8)Random();
    *((u8 *)param_1 + 0x47) = 4;

    Func_809ba70(param_1, 1);
}

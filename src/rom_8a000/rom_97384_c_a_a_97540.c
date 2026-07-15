typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

extern void *galloc_ewram(int slot, u32 size);
extern void Func_8097384(void);
extern void Func_80978c4(void);
extern u32 iwram_3001e40;
extern int Func_8091200(u32 a, u32 b);
extern void Func_8091254(u32 a);
extern void Func_8097a7c(void);
extern void StartTask(void (*task)(void), int priority);
extern void Task_08097644(void);

void Field_MindRead(u32 param1_in, u32 param2_in)
{
    register u32 param1 asm("r6") = param1_in;
    register u32 param2 asm("r8") = param2_in;
    u8 *buf = galloc_ewram(0x16, 0xa6 << 2);
    u32 zero;

    Func_8097384();

    {
        register u32 *src asm("r0") = &zero;
        *src = 0;
        {
            register vu32 *dma asm("r3") = &REG_DMA3SAD;
            register u8 *dst asm("r1") = buf;
            register u32 cnt asm("r2") = 0x850000a6;
            asm volatile(
                "stmia r3!, {r0,r1,r2}\n\t"
                "sub r3, #0xc"
                : "+r"(dma)
                : "r"(src), "r"(dst), "r"(cnt)
                : "memory"
            );
        }
    }

    {
        u16 rnd = (iwram_3001e40 << 1) % 0x168;
        *(u16 *)(buf + 0x28e) = rnd;
    }

    Func_80978c4();

    {
        u32 flags = (s8)buf[0x28d] << 10;
        flags |= (s8)buf[0x28c] << 5;
        flags |= (s8)buf[0x28b];
        flags |= 0x200000;
        {
            register u32 arg0 asm("r0") = flags;
            asm volatile(
                "movs r1, #1\n\t"
                "bl Func_8091200"
                : "+r"(arg0)
                :
                : "r1", "r2", "r3", "lr", "memory", "cc"
            );
        }
    }
    Func_8091254(8);

    *(u16 *)(buf + 0x290) = param1;
    *(u16 *)(buf + 0x292) = param2;
    *(u8 *)(buf + 0x294) = 8;

    Func_8097a7c();

    {
        u32 priority = 0xc8 << 4;
        StartTask(Task_08097644, priority);
    }
}

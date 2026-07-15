typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef volatile u32 vu32;

typedef struct {
    u16 *a;
    u16 *b;
    u16 zero;
    u16 flag;
} Entry;

extern u8 iwram_3001e70[];
extern int StartTask(void *task, int priority);
extern void Func_801179c(void);

void Func_80118d8(u16 *cmd)
{
    u8 *base;
    u8 *dst;
    u32 count;
    u32 zero;
    u16 *p;
    u32 v;
    u32 idx;
    u32 f;
    Entry *e;

    base = *(u8 **)iwram_3001e70;
    p = cmd;
    count = 0;

    {
        register u32 *src __asm__("r0") = &zero;
        dst = base + 0x18;
        *src = count;
        {
            register vu32 *dma __asm__("r3") = (vu32 *)0x040000d4;
            register u32 ddst __asm__("r1") = (u32)dst;
            register u32 cnt __asm__("r2") = 0x85000030;
            __asm__ volatile(
                "stmia\tr3!, {r0, r1, r2}\n\t"
                "sub\tr3, #0xc"
                : "+r"(dma)
                : "r"(src), "r"(ddst), "r"(cnt)
                : "memory");
        }
    }

    v = *p;
    p++;
    if (v != 0xffff) {
        do {
            if ((v & 0xff00) == 0xfd00) {
                idx = v & 0xf;
                f = 0;
                if (v & 0x80)
                    f = 1;
                e = (Entry *)(base + 0x18 + idx * 12);
                e->a = p;
                e->b = p;
                e->zero = 0;
                e->flag = f;
                count++;
            }
            v = *p;
            p++;
        } while (v != 0xffff);
    }

    if (count != 0) {
        StartTask(Func_801179c, 200 << 4);
    }
}

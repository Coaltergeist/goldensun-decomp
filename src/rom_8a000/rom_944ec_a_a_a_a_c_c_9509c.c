typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

extern void *galloc_ewram(int slot, u32 size);
extern void gfree(int slot);
extern void DecompressLZ1(const void *source, void *destination);
extern int AllocSpriteSlot(void);
extern u32 UploadSpriteGFX(u32 slot, int size, const void *gfx);
extern int _Func_8011f54(int a, int x, int z);
extern void StartTask(void (*task)(void), int priority);
extern void Task_Earthquake(void);
extern const u8 Data_a00b8[];
extern int **iwram_3001e70;

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

typedef struct {
    s32 spriteSlot;
    s32 gfxHandle;
} EqData;

typedef struct {
    s32 flag;
    s32 unk4;
    s32 unk8;
    s32 unkc;
    s32 amp;
    s32 unk14;
    s32 unk18;
    u16 counter;
    u16 pad;
} EqEntry;

void StartEarthquake(void)
{
    register EqData *data asm("r5") = galloc_ewram(0x1d, 0x82 << 3);
    register EqEntry *e asm("r7") = (EqEntry *)data;
    u32 zero;
    u8 *gfxbuf;
    s32 slot;
    u32 i;

    {
        register u32 *src asm("r0");
        asm volatile(
            "movs r1, #0\n\t"
            "mov r0, sp\n\t"
            "str r1, [r0]"
            : "=r"(src), "=m"(zero)
            :
            : "r1", "memory"
        );
        e = (EqEntry *)((u8 *)e + 8);
        {
            register vu32 *dma asm("r3") = &REG_DMA3SAD;
            register EqData *dst asm("r1") = data;
            register u32 cnt asm("r2") = 0x85000104;
            asm volatile(
                "stmia r3!, {r0,r1,r2}\n\t"
                "sub r3, #0xc"
                : "+r"(dma)
                : "r"(src), "r"(dst), "r"(cnt)
                : "memory"
            );
        }
    }

    gfxbuf = galloc_ewram(0xe, 0x80 << 3);
    DecompressLZ1(Data_a00b8, gfxbuf);
    slot = AllocSpriteSlot();
    data->spriteSlot = slot;
    data->gfxHandle = UploadSpriteGFX(slot, 0x80 << 2, gfxbuf);
    gfree(0xe);

    for (i = 0; i < 32; i++) {
        register int *origin asm("r2");
        s32 x, z;
        register s32 *p asm("r1") = (s32 *)e;
        *p = 0;
        p++;
        origin = *iwram_3001e70;
        *p = 0x40000400;
        p++;
        *p = 0xd400;
        x = origin[0];
        z = origin[2];
        e->unkc = 0;
        e->unk14 = 0;
        e->amp = _Func_8011f54(0, x >> 16, z >> 16) << 16;
        e->counter = (u16)((i & 0xf) + 1);
        e++;
    }

    {
        s32 priority = 0xc8 << 4;
        StartTask(Task_Earthquake, priority);
    }
}

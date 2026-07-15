typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u32 iwram_3001ebc;
extern void __SetFlag(int flag);
extern u8 *__MapActor_GetActor(s32 actorId);

int OvlFunc_962_2008a78(void)
{
    register u32 mask asm("r5");
    register u32 half asm("r6");
    register u32 zeroA asm("r10");
    register u32 zeroB asm("r8");
    u8 *actor;
    u8 *base;

    {
        register u32 addr asm("r3");
        register u32 off asm("r2");
        asm volatile("ldr %0, .Lgstate962a78" : "=r"(addr));
        off = 0xe1;
        off <<= 1;
        addr += off;
        off = 0;
        if (*(s16 *)(addr + off) == 0x5a) {
            register s32 flagArg asm("r0");
            asm volatile("ldr %0, .Lflag962a78" : "=r"(flagArg));
            __SetFlag(flagArg);
        }
    }

    {
        register u32 addr asm("r3");
        asm volatile("ldr %0, .Liwram962a78" : "=r"(addr));
        base = *(u8 **)addr;
    }
    *(u32 *)(base + 0x1c0) = 0x209;
    *(u32 *)(base + 0x1c8) = 0x18;

    actor = __MapActor_GetActor(0xc);
    actor += 0x59;
    mask = 4;
    *actor |= mask;

    zeroA = 0;
    actor = __MapActor_GetActor(0xd);
    actor += 0x59;
    *actor |= mask;

    actor = __MapActor_GetActor(0x14);
    {
        u8 *sprite = *(u8 * volatile *)(actor + 0x50);
        sprite += 0x26;
        *sprite = zeroA;
    }
    half = 0x80;
    half <<= 7;
    {
        u8 *sprite = *(u8 * volatile *)(actor + 0x50);
        *(u16 *)(sprite + 0x1e) = half;
    }
    {
        register u32 tmp2 asm("r2");
        asm volatile("ldr %0, .Lzero962a78" : "=r"(tmp2));
        {
            register u8 *sub asm("r1") = *(u8 * volatile *)(actor + 0x50);
            zeroB = tmp2;
            {
                register u32 val asm("r3") = 0xd;
                register u32 flags asm("r2") = sub[9];
                val = -val;
                val &= flags;
                val |= mask;
                sub[9] = val;
            }
        }
    }

    actor = __MapActor_GetActor(0x15);
    {
        u8 *sprite = *(u8 * volatile *)(actor + 0x50);
        sprite += 0x26;
        *sprite = zeroB;
    }
    {
        u8 *sprite = *(u8 * volatile *)(actor + 0x50);
        *(u16 *)(sprite + 0x1e) = half;
    }
    {
        u8 *field = actor;
        field += 0x55;
        *field = 2;
    }
    *(u32 *)(actor + 0xc) = zeroA;

    {
        register u32 ret asm("r0") = 0;
        asm volatile(
            "b .Lafter962a78\n\t"
            ".align 2, 0\n"
            ".Lzero962a78:\n\t"
            ".word 0\n\t"
            ".Lgstate962a78:\n\t"
            ".word gState\n\t"
            ".Lflag962a78:\n\t"
            ".word 0x96f\n\t"
            ".Liwram962a78:\n\t"
            ".word iwram_3001ebc\n\t"
            ".Lafter962a78:"
            : "+r"(ret));
        return ret;
    }
}

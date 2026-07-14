typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern u8 Value_22[] asm("0x22");
extern u8 *__MapActor_GetActor(int actorId);
extern void OvlFunc_910_200850c(void);

int OvlFunc_910_20084bc(void)
{
    u8 *mapState;
    u32 offset;
    u8 *actor;
    u8 *sprite;
    s16 state;

    mapState = iwram_3001ebc;
    offset = 0xe0;
    offset <<= 1;
    *(u32 *)(mapState + offset) = 0x80 << 1;

    actor = __MapActor_GetActor(8);
    {
        register u8 *addr asm("r2");
        register int zero asm("r3");
        register int flags asm("r2");
        register int mask asm("r3");

        addr = actor;
        asm volatile("" : "+r"(addr));
        addr += 0x23;
        zero = 0;
        asm volatile("" : "+r"(addr), "+r"(zero));
        *addr = zero;

        sprite = *(u8 **)(actor + 0x50);
        flags = sprite[9];
        asm volatile("" : "+r"(flags), "+r"(zero));
        mask = zero - 13;
        asm volatile("" : "+r"(mask), "+r"(flags));
        mask &= flags;
        mask |= 4;
        sprite[9] = mask;
    }

    {
        register u8 *gp asm("r3");
        register int st asm("r2");
        register int cmpval asm("r3");

        gp = gState;
        asm volatile("" : "+r"(gp), "+r"(offset));
        st = *(s16 *)(gp + offset);
        asm volatile("" : "+r"(st));
        cmpval = (int)Value_22;
        asm volatile("" : "+r"(st), "+r"(cmpval));
        if (st == cmpval) {
            OvlFunc_910_200850c();
        }
    }

    return 0;
}

typedef unsigned char u8;
typedef signed short s16;
typedef unsigned int u32;

extern u8 gState[];
extern u32 *iwram_3001ebc;
extern void __ClearFlag(int flag);
extern u8 *__MapActor_GetActor(int actor);

int OvlFunc_900_20081e4(void)
{
    register int mask asm("r5");
    register u32 *map asm("r3") = iwram_3001ebc;
    register int offset asm("r2") = 0xe0;
    int state;

    offset <<= 1;
    asm volatile ("" : "+r"(offset));
    map = (u32 *)((u8 *)map + offset);
    asm volatile ("" : "+r"(map));
    offset += 0x49;
    *map = offset;
    {
        register u8 *state_base asm("r3") = gState;

        offset -= 0x47;
        state_base += offset;
        asm volatile ("" : "+r"(state_base));
        {
            register int zero_offset asm("r2") = 0;

            state = *(s16 *)(state_base + zero_offset);
        }
    }

    if (state == 2) {
        __ClearFlag(0x12f);
    } else if (state == 10) {
        u8 *flags = __MapActor_GetActor(8) + 0x59;
        register u8 value asm("r2") = *flags;
        register int branch_mask asm("r3") = 0x14;

        branch_mask |= value;
        *flags = branch_mask;
        asm volatile ("" ::: "memory");
    } else {
        u8 *flags = __MapActor_GetActor(8) + 0x59;

        mask = 0x14;
        *flags |= mask;
        flags = __MapActor_GetActor(9) + 0x59;
        *flags |= mask;
        flags = __MapActor_GetActor(10) + 0x59;
        mask |= *flags;
        *flags = mask;
    }

    return 0;
}

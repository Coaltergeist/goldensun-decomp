typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;

struct SpriteSlot {
    u16 size;
    u16 vramOffset;
};

extern u8 gSpriteAllocTable[];
extern struct SpriteSlot gSpriteSlots[];

s32 Func_8003e58(u32 slot_arg, u32 size)
{
    register u32 slot asm("r6") = slot_arg;
    register u32 blocks asm("r5") = size >> 6;
    register u8 *alloc asm("r12");
    register struct SpriteSlot *slots asm("r14");
    register u8 *scan_base asm("r7");
    register u32 index asm("r4");
    register s32 result asm("r0");
    register s32 limit asm("r3");

    if (slot > 0x5f)
        return -1;

    asm volatile("ldr r1, =gSpriteAllocTable\n\t"
                 "ldr r2, =gSpriteSlots\n\t"
                 "mov r12, r1\n\t"
                 "mov r4, #0\n\t"
                 "mov r14, r2\n\t"
                 "mov r7, r12"
                 : "=r"(alloc), "=r"(slots), "=r"(index), "=r"(scan_base)
                 : : "r1", "r2");
top:
    {
        register u32 end asm("r1");
        register u8 *current asm("r2");

        asm volatile("mov r3, #128\n\t"
                     "mov r0, #1\n\t"
                     "lsl r3, r3, #2\n\t"
                     "neg r0, r0"
                     : "=r"(limit), "=r"(result));
        if ((s32)index >= limit)
            return result;
        if (scan_base[index] != 0xff)
            goto occupied;
        result = index;
        asm volatile("add r1, r5, r0" : "=r"(end)
                     : "r"(blocks), "r"(result));
        if ((u32)result >= end)
            goto found;
        asm volatile("add r2, r0, r7" : "=r"(current)
                     : "r"(result), "r"(scan_base));
scan:
        if (*current++ != 0xff)
            goto occupied;
        index++;
        if (index < end)
            goto scan;
    }
found:
    {
        u32 i = 0;
        if (i < blocks) {
            do {
                asm volatile("add r3, r0, r2\n\t"
                             "mov r1, r12\n\t"
                             "add r2, r2, #1\n\t"
                             "strb r6, [r1, r3]"
                             : "+r"(i)
                             : "r"(result), "r"(alloc), "r"(slot)
                             : "r1", "r3");
            } while (i < blocks);
        }
    }
    goto done;
occupied:
    {
        register u32 occupied_size asm("r3");
        asm volatile("mov r2, r12\n\t"
                     "ldrb r3, [r2, r4]\n\t"
                     "mov r1, r14\n\t"
                     "lsl r3, r3, #2\n\t"
                     "ldrh r3, [r1, r3]"
                     : "=r"(occupied_size)
                     : "r"(alloc), "r"(slots), "r"(index)
                     : "r1", "r2");
        index += occupied_size >> 6;
    }
    goto top;
done:
    return result << 6;
}

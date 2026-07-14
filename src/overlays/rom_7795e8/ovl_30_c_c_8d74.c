typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;
extern void *Alloc_NoArgs(void) asm("__Func_8004970");
extern void Free_NoArgs(void) asm("__free");

void OvlFunc_880_2008d74(const u8 *object_arg)
{
    register const u8 *object asm("r5") = object_arg;
    register u8 *mirror asm("r6");
    register void *allocation asm("r7");
    register int row asm("r5");
    register u32 tile asm("r12");
    register int mask asm("r0");
    register volatile u16 *vram asm("r1");
    register int alloc_size asm("r0");
    register void *alloc_result asm("r0");
    register u32 vram_base asm("r2");
    u32 offset;

    asm volatile("" : "+r"(object));
    asm volatile("ldr r3, =iwram_3001e8c\n\t"
                 "mov r0, #192\n\t"
                 "lsl r0, r0, #2\n\t"
                 "ldr r6, [r3]"
                 : "=r"(mirror), "=r"(alloc_size) : : "r3");
    alloc_result = Alloc_NoArgs();
    offset = ((u32)*(u16 *)(object + 0xe) * 32 +
              (u32)*(u16 *)(object + 0xc));
    asm volatile("ldr r2, =0x06002000" : "=r"(vram_base));
    offset *= 2;
    asm volatile("mov r7, r0\n\t"
                 "mov r5, #0\n\t"
                 "ldr r0, 1f\n\t"
                 "add r1, %6, r2\n\t"
                 "add r6, %6\n\t"
                 "mov r12, r5"
                 : "=r"(allocation), "=r"(row), "=r"(mask),
                   "=r"(vram), "+r"(mirror), "=r"(tile)
                 : "r"(offset), "r"(alloc_result), "r"(vram_base));

    do {
        int current = tile + 0x20;
        int count = 0xf;
        asm volatile("b 2f\n\t"
                     ".align 2, 0\n\t"
                     "1:\n\t"
                     ".word 0xfffff000\n\t"
                     ".pool\n"
                     "2:");
        do {
            s16 entry = (s16)(current | mask);
            count--;
            *vram++ = entry;
            current++;
            *(u16 *)mirror = entry;
            mirror += 2;
        } while (count >= 0);
        row++;
        vram += 0x10;
        mirror += 0x20;
        tile += 0x10;
    } while (row <= 7);

    asm volatile("mov r0, r7" : : "r"(allocation) : "r0");
    Free_NoArgs();
}

typedef signed short s16;

typedef struct {
    s16 id;
    s16 flag;
    int unused04;
    int x;
    int unused0c;
    int z;
    int unused14;
} MapRegion;

extern char *iwram_3001e70;
extern void _ClearFlag(int flag);
extern void _SetFlag(int flag);

void Func_808b868(MapRegion *first_region)
{
    register MapRegion *region asm("r5");
    register char *state asm("r6");
    register int outside_flag asm("r7");
    register int clear_flag asm("r0");

    asm volatile("ldr r3, =iwram_3001e70\n\t"
                 "mov r5, r0\n\t"
                 "ldr r7, =0x165\n\t"
                 "mov r0, #0xb2\n\t"
                 "lsl r0, #1\n\t"
                 "ldr r6, [r3]"
                 : "=r"(region), "=r"(state), "=r"(outside_flag),
                   "=r"(clear_flag) : : "r3");
    _ClearFlag(clear_flag);
    _SetFlag(outside_flag);
    {
        register int sentinel_low asm("r2") = 0;
        register int id asm("r3") = *(s16 *)((char *)region + sentinel_low);
        register int sentinel asm("r12");
        register int *minimum_x asm("r4");
        register int flag asm("r0");
        sentinel_low = 1;
        sentinel_low = -sentinel_low;
        if (id == sentinel_low)
            return;
        minimum_x = (int *)state;
        flag = outside_flag;
        sentinel = sentinel_low;
        minimum_x = (int *)((char *)minimum_x + 0xec);
        do {
            if (region->flag == 0) {
                register int x asm("r2") = region->x;
                register int z asm("r1") = region->z;
                if (*minimum_x <= x && x <= *(int *)(state + 0xf4) &&
                    *(int *)(state + 0xf0) <= z && z <= *(int *)(state + 0xf8)) {
                    asm volatile("mov r3, #0xb2\n\tlsl r3, #1\n\tstrh r3, [r5, #2]"
                                 : : "r"(region) : "r3", "memory");
                } else {
                    region->flag = flag;
                }
            }
            region++;
        } while (region->id != sentinel);
    }
}

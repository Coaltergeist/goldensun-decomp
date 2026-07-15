typedef unsigned short u16;
typedef struct Unit { unsigned char pad0[0xd8]; u16 items[15]; } Unit;
extern Unit *GetUnit(int id);
extern void CalcStats(int id);
int Func_80788c4(int unitId, int slot)
{
    Unit *unit;
    u16 item;
    int result;
    unit = GetUnit(unitId);
    item = unit->items[slot];
    result = -1;
    if (item != 0) {
        asm volatile (
                "mov r2, #0xf8\n\t"
                "lsl r2, #8\n\t"
                "and r2, r3\n\t"
                "cmp r2, #0\n\t"
                "beq 8f\n\t"
                "ldr r2, 1f\n\t"
                "add r3, r2\n\t"
                "strh r3, [r0, r5]\n\t"
                "mov r6, #1\n\t"
                "b 9f\n\t"
                ".align 2\n"
                "1:\n\t.word 0xfffff800\n"
                "8:"
                ::: "cc", "memory");
        {
            register u16 *start asm("r6");
            register u16 *read asm("r4");
            register u16 *write asm("r1");
            register int kept asm("r5");
            register int i asm("r0");
            start = unit->items;
            asm volatile ("strh r2, [r0, r5]" ::: "memory");
            read = start;
            kept = 0;
            write = start;
            i = 14;
            do {
                register u16 value asm("r2");
                asm volatile ("ldrh %0, [%1]" : "=r" (value) : "r" (read));
                read++;
                if (value != 0) {
                    *write++ = value;
                    kept++;
                }
                i--;
            } while (i >= 0);
            if (kept < 15) {
                asm volatile ("lsl r3, r5, #1\n\tadd r0, r3, r6\n\tldr r2, 2f\n\tmov r3, #15\n\tsub r5, r3, r5\n1:\n\tsub r5, #1\n\tstrh r2, [r0]\n\tadd r0, #2\n\tcmp r5, #0\n\tbne 1b\n\tb 3f\n\t.align 2\n2:\n\t.word 0\n3:" ::: "r0", "r2", "r3", "r5", "cc", "memory");
            }
            result = 2;
        }
        asm volatile ("9:");
    }
    CalcStats(unitId);
    return result;
}

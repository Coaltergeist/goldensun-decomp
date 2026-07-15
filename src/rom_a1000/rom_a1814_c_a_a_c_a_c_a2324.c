typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001f2c;
extern void Func_80a17c4(void *entry);

void Func_80a2324(int count, int startArgument, void *unused, int x, int yArgument)
{
    register u8 *state asm("r8") = iwram_3001f2c;
    register int end asm("r10");
    register void *entry asm("r5");
    int y;

    {
        register int index asm("r6");
        void **entries = (void **)(state + 0x48);
        int resetValue = 13;

        asm volatile("" : "+r" (entries));

        index = 31;
        do {
            entry = *entries++;
            if (entry != 0)
                *((u8 *)entry + 5) = resetValue;
            index--;
        } while (index >= 0);
    }

    {
        register int start asm("r6");
        void **entries;
        register int byteOffset asm("r2");
        register u8 *stateCopy asm("r1");
        asm volatile("mov r6, r1" : "=r" (start) : "r" (startArgument));
        count += start;
        if (start >= count)
            return;

        asm volatile(
            "lsl r2, r6, #2\n\t"
            "mov r3, r2\n\t"
            "add r3, #0x48\n\t"
            "mov r1, r8\n\t"
            "ldr r5, [r1, r3]"
            : "=r" (entry), "=r" (byteOffset), "=r" (stateCopy)
            : "r" (start), "r" (state)
            : "r3", "memory");
        if (entry == 0)
            return;
        if (start > state[0x218] - 1)
            return;

        asm volatile(
            "add r3, r2, r1\n\t"
            "mov r2, r3\n\t"
            "ldr r7, [sp, #0x20]\n\t"
            "mov r10, r0\n\t"
            "add r2, #0x48"
            : "=r" (entries), "=r" (y), "=r" (end)
            : "r" (byteOffset), "r" (stateCopy)
            : "r3", "memory");

        do {
            *(u16 *)((u8 *)entry + 6) = x;
            *(u16 *)((u8 *)entry + 8) = y;
            Func_80a17c4(entry);
            asm volatile(
                "add r6, #1\n\t"
                "mov r3, #1\n\t"
                "strb r3, [r5, #5]"
                : "+r" (start)
                : "r" (entry)
                : "r3", "memory");
            y += 16;
            if (start >= end)
                break;
            entry = *++entries;
            if (entry == 0)
                break;
            if (start > state[0x218] - 1)
                break;
        } while (1);
    }
}

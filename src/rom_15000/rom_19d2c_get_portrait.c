typedef signed short s16;
typedef unsigned int u32;

extern s16 Data_367e4[];
extern s16 Data_3680c[];

int GetPortrait(u32 character)
{
    register int result asm("r1") = -1;
    register int index asm("r2") = 0;
    register s16 *table asm("r4");
    register int value asm("r3");
    register int sentinel asm("r5");

    if (character <= 0x13) {
        table = Data_367e4;
        value = table[0];
        if (value == result)
            goto done;
        if (value == character) {
            asm volatile("mov r2, #2\n\tldrsh r1, [r4, r2]"
                         : "=r" (result), "+r" (index) : "r" (table));
            goto done;
        }
        do {
            asm volatile("add r2, #2\n\tlsl r3, r2, #1\n\tldrsh r3, [r4, r3]\n\tmov r5, #1\n\tneg r5, r5"
                         : "+r" (index), "=r" (value), "=r" (sentinel) : "r" (table));
            if (value == sentinel)
                goto done;
        } while (value != character);
        asm volatile("add r2, #1\n\tlsl r3, r2, #1\n\tldrsh r1, [r4, r3]"
                     : "=r" (result), "+r" (index), "=r" (value) : "r" (table));
        goto done;
    } else {
        table = Data_3680c;
        value = table[0];
        if (value == -1)
            goto done;
        if (value == character) {
            asm volatile("mov r2, #2\n\tldrsh r1, [r4, r2]"
                         : "=r" (result), "+r" (index) : "r" (table));
        }
        else {
            do {
                asm volatile("add r2, #2\n\tlsl r3, r2, #1\n\tldrsh r3, [r4, r3]\n\tmov r5, #1\n\tneg r5, r5"
                             : "+r" (index), "=r" (value), "=r" (sentinel) : "r" (table));
                if (value == sentinel)
                    goto done;
            } while (value != character);
            asm volatile("add r2, #1\n\tlsl r3, r2, #1\n\tldrsh r1, [r4, r3]"
                         : "=r" (result), "+r" (index), "=r" (value) : "r" (table));
        }
        result += 0x80;
    }
done:
    return result;
}

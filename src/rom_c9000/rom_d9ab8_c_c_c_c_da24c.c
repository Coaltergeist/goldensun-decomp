typedef signed short s16;

int Func_80da24c(char *ctx, s16 *outputArg)
{
    register s16 *output asm("r14") = outputArg;
    register int count asm("r6") = 0;
    register int limit asm("r5");
    register int found asm("r12") = count;
    register int i asm("r4") = 0;
    int radius = *(int *)(ctx + 0x10);
    register int doubled asm("r3") = radius * 2;

    limit = doubled + 1;
    if (limit != 0) {
        int offset = 0x24;
        s16 candidate = *(s16 *)(ctx + offset);
        int key = *(int *)(ctx + 0xc);

        if (key != candidate) {
            for (;;) {
                i++;
                if (i == limit)
                    break;
                offset = i * 2 + 0x24;
                candidate = *(s16 *)(ctx + offset);
                if (key == candidate) {
                    found = i;
                    break;
                }
            }
        }

        i = 0;
        if (limit != 0) {
            for (;;) {
                int value = found + i - radius;
                if (value >= 0 && value < *(int *)(ctx + 0x14)) {
                    register s16 *target asm("r7") = output;
                    target[count++] = value;
                }
                i++;
                if (i == limit)
                    break;
                radius = *(int *)(ctx + 0x10);
            }
        }
    }
    return count;
}

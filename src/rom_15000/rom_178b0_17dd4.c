extern int __modsi3(int value, int divisor);
extern int __divsi3(int value, int divisor);

char *PrintNum(char *buffer, int value, unsigned int width)
{
    char *digit;
    register char *scan asm("r2");
    register unsigned int negative asm("r9") = 0;
    register char *base asm("r10");
    register int space asm("r1");
    register int minus asm("r4");
    register unsigned int index asm("r0");

    if (value < 0) {
        if (width == 0)
            negative = 1;
        value = -value;
    }

    buffer[0] = ' ';
    digit = buffer + 12;
    base = buffer;
    do {
        *digit = __modsi3(value, 10) + '0';
        value = __divsi3(value, 10);
        digit--;
    } while (digit != base);
    asm volatile(
        "mov r0, #0\n\t"
        "strb r0, [r7, #0xd]\n\t"
        "mov r1, #0x20\n\t"
        "mov r0, #1\n\t"
        "mov r4, #0x2d\n\t"
        "mov r2, r7"
        : "=r" (index), "=r" (scan), "=r" (space), "=r" (minus)
        : "r" (buffer)
        : "memory", "cc");

    for (; index != 13; scan++, index++) {
        if (scan[1] == '0') {
            if (index != 12)
                scan[1] = space;
        } else {
            if (negative)
                *scan = minus;
            break;
        }
    }

    if (width == 0) {
        index = 0;
        if (buffer[0] == ' ') {
            scan = buffer;
            while (++index != 12) {
                scan++;
                if (*scan != ' ')
                    break;
            }
        }
        return buffer + index;
    }

    if (width > 12)
        width = 12;
    return buffer + 13 - width;
}

typedef signed char s8;

int HeightTile_6(const s8 *heights, int x, int y)
{
    register int sample asm("r3") = heights[0];
    register int first asm("r5");
    register int middle asm("r4");
    register int last asm("r3");
    register int position asm("r1");
    register int result asm("r0");

    heights++;
    first = sample << 19;
    sample = heights[0];
    middle = sample << 19;
    sample = heights[1];
    result = y - x;
    position = result;
    position += 0xf;
    last = sample << 19;
    asm("" : "+r"(first), "+r"(middle), "+r"(last), "+r"(position),
        "+r"(result));

    if (position == 0xf) {
        result = middle;
    } else if ((unsigned int)position <= 0xe) {
        last = middle - first;
        asm volatile("" : "+r"(last));
        result = position;
        asm("" : "+r"(result), "+r"(last));
        result *= last;
        if (result < 0)
            result += 0xf;
        result >>= 4;
        result = first + result;
    } else {
        last -= middle;
        result *= last;
        if (result < 0)
            result += 0xf;
        result >>= 4;
        result = middle + result;
    }
    return result;
}

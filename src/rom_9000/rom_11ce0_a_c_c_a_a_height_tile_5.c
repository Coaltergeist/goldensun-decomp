typedef signed char s8;

extern int __divsi3(int numerator, int denominator);

int HeightTile_5(const s8 *heights, int x, int y)
{
    register int sample asm("r3") = heights[0];
    register int first asm("r6");
    register int middle asm("r5");
    register int last asm("r3");
    register int position asm("r1") = x;
    register int result asm("r0");

    heights++;
    first = sample << 19;
    sample = heights[0];
    middle = sample << 19;
    sample = heights[1];
    position += y;
    last = sample << 19;
    result = middle;
    asm("" : "+r"(first), "+r"(middle), "+r"(last), "+r"(position),
        "+r"(result));

    if (position != 0xf) {
        if ((unsigned int)position <= 0xe) {
            last = middle - first;
            asm volatile("" : "+r"(last));
            result = position;
            asm("" : "+r"(result), "+r"(last));
            result *= last;
            result = __divsi3(result, 0xf);
            result = first + result;
        } else {
            position -= 0xf;
            asm("" : "+r"(position));
            last -= middle;
            asm("" : "+r"(last));
            result = position;
            asm("" : "+r"(result), "+r"(last));
            result *= last;
            result = __divsi3(result, 0xf);
            result = middle + result;
        }
    }
    return result;
}

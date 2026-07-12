int HeightTile_A(signed char *heights, unsigned int step) {
    register signed char *heightReg asm("r0") = heights;
    int first = *heightReg++ << 19;
    int second = *heightReg++ << 19;

    if (step <= 7) {
        int delta = second - first;
        register int result asm("r0") = step;
        asm("" : "+r"(result));
        result *= delta;
        result /= 8;
        return first + result;
    }

    {
        register int raw asm("r3") = *heightReg;
        register int delta asm("r2");
        asm("" : "+r"(raw));
        delta = raw << 19;
        asm("" : "+r"(delta));
        delta -= second;
        asm("" : "+r"(delta));
        {
            register int offset asm("r3") = step;
            register int result asm("r0");
            asm("" : "+r"(offset));
            offset -= 8;
            asm("" : "+r"(offset) : "r"(delta));
            result = offset;
            asm("" : "+r"(result));
            result *= delta;
            result /= 8;
            return second + result;
        }
    }
}

int HeightTile_B(unsigned char *heights, int unused, unsigned int step) {
    register unsigned char *heightReg asm("r0") = heights;
    register unsigned int raw asm("r3") = *heightReg++;
    register unsigned int stepReg asm("r4");
    register int first asm("r2");
    register int second asm("r1");
    asm("" : "+r"(raw), "+r"(heightReg));
    asm("" : "=r"(stepReg) : "r"(heightReg), "0"(step));
    first = raw << 19;
    asm("" : "+r"(first));
    raw = *heightReg++;
    asm("" : "+r"(raw), "+r"(heightReg));
    second = raw << 19;
    asm("" : "+r"(second));

    if (stepReg <= 7) {
        register int delta asm("r3") = second - first;
        register int result asm("r0") = stepReg;
        asm("" : "+r"(delta));
        asm("" : "+r"(result));
        result *= delta;
        result /= 8;
        result = first + result;
        asm("" : "+r"(result));
        return result;
    }

    {
        register int raw2 asm("r3") = *heightReg;
        register int delta asm("r2");
        asm("" : "+r"(raw2));
        delta = raw2 << 19;
        asm("" : "+r"(delta));
        delta -= second;
        asm("" : "+r"(delta));
        {
            register int offset asm("r3") = stepReg;
            register int result asm("r0");
            asm("" : "+r"(offset));
            offset -= 8;
            asm("" : "+r"(offset) : "r"(delta));
            result = offset;
            asm("" : "+r"(result));
            result *= delta;
            result /= 8;
            result = second + result;
            asm("" : "+r"(result));
            return result;
        }
    }
}

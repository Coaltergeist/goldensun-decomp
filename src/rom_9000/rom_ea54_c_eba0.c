int Func_800eba0(const int *position, int radius, const int *other,
                 int otherRadius)
{
    int dx = (*position++ - *other++) >> 16;
    int dy = (*position++ - *other++) >> 16;
    int dz = (*position - *other) >> 16;
    int totalRadius = radius + otherRadius;
    register int result asm("r0");
    register int dySquared asm("r2");
    register int sum asm("r3");
    register int work asm("r2");

    if (dx > 0x400000 || dz > 0x400000) {
        goto outside;
    }
    dySquared = dy;
    asm volatile("" : "+r"(dySquared));
    dySquared *= dy;
    asm volatile("" : "+r"(dySquared));
    sum = dx;
    asm volatile("" : "+r"(sum));
    sum *= dx;
    asm volatile("" : "+r"(sum));
    sum += dySquared;
    asm volatile("" : "+r"(sum));
    work = dz;
    asm volatile("" : "+r"(work));
    work *= dz;
    asm volatile("" : "+r"(work));
    sum += work;
    asm volatile("" : "+r"(sum));
    work = totalRadius;
    asm volatile("" : "+r"(work));
    work *= totalRadius;
    asm volatile("" : "+r"(work));
    result = 0;
    asm volatile("" : "+r"(result));
    if (sum < work) {
        goto done;
    }
outside:
    result = -1;
done:
    return result;
}

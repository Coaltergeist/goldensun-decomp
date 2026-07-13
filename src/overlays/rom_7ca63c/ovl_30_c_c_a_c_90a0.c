extern unsigned char *iwram_3001e70;
extern unsigned int gOvl944AngleA asm(".L1940");
extern unsigned int gOvl944AngleB asm(".L1928");
extern unsigned int gOvl944OffsetX asm(".L1924");
extern unsigned int gOvl944OffsetY asm(".L1920");

extern int __cos(int angle);
extern int __sin(int angle);
extern unsigned int __Random(void);

void OvlFunc_944_20090a0(void)
{
    register unsigned int *angle_a asm("r6");
    register int *position asm("r5");
    register int cosine asm("r10");
    register unsigned int *angle_b asm("r8");
    register unsigned int value asm("r0");
    register unsigned int temp asm("r3");
    register unsigned int r2value asm("r2");
    register unsigned int mask asm("r1");

    temp = (unsigned int)&iwram_3001e70;
    asm volatile("" : "+r"(temp));
    angle_a = &gOvl944AngleA;
    asm volatile("" : "+r"(angle_a));
    temp = *(unsigned int *)temp;
    value = *angle_a;
    position = *(int **)temp;
    cosine = __cos(value);

    r2value = (unsigned int)&gOvl944AngleB;
    asm volatile("" : "+r"(r2value));
    value = *(unsigned int *)r2value;
    angle_b = (unsigned int *)r2value;
    value = __sin(value);

    temp = *position;
    temp += cosine;
    *position++ = temp;
    temp = *position;
    value <<= 2;
    temp += value;
    *position = temp;

    r2value = (unsigned int)&gOvl944OffsetX;
    asm volatile("" : "+r"(r2value));
    temp = *(unsigned int *)r2value;
    temp += cosine;
    *(unsigned int *)r2value = temp;

    r2value = (unsigned int)&gOvl944OffsetY;
    asm volatile("" : "+r"(r2value));
    temp = *(unsigned int *)r2value;
    temp += value;
    *(unsigned int *)r2value = temp;

    value = __Random();
    temp = value << 1;
    temp += value;
    r2value = *angle_a;
    temp <<= 7;
    temp >>= 16;
    r2value += temp;
    *angle_a = r2value;

    value = __Random();
    r2value = (unsigned int)angle_b;
    temp = *(unsigned int *)r2value;
    value <<= 9;
    r2value = *(unsigned short *)angle_a;
    value >>= 16;
    mask = 0xffff;
    temp += value;
    *angle_a = r2value;
    temp &= mask;
    r2value = (unsigned int)angle_b;
    *(unsigned int *)r2value = temp;
}

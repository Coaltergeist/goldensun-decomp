extern unsigned char gState[];
extern unsigned char Script_11ec[] asm(".L11ec");
extern unsigned char Script_130c[] asm(".L130c");
extern unsigned char Script_136c[] asm(".L136c");
extern unsigned char Script_11d4[] asm(".L11d4");
extern unsigned char gOvl_020093fc[];
extern unsigned char Value_1e[] asm("0x1e");
extern unsigned char Value_23[] asm("0x23");
extern unsigned char Value_20[] asm("0x20");
extern int __atan2(int y, int x);

int OvlFunc_907_2008030(unsigned char *actor)
{
    register unsigned char *savedActor asm("r5") = actor;
    register unsigned char *target asm("r1") = *(unsigned char **)(savedActor + 0x68);

    if (target != 0) {
        register int angle asm("r0");
        register int otherCoordinate asm("r1");
        register int currentAngle asm("r3");
        register int limit asm("r2");

        angle = (unsigned int)savedActor;
        angle += 0x5a;
        asm volatile("" : "+r"(angle));
        limit = *(unsigned char *)angle;
        asm volatile("" : "+r"(angle), "+r"(limit));
        currentAngle = 0xfe;
        currentAngle &= limit;
        *(unsigned char *)angle = currentAngle;

        angle = *(int *)(target + 0x10);
        asm volatile("" : "+r"(angle), "+r"(target));
        currentAngle = *(int *)(savedActor + 0x10);
        asm volatile("" : "+r"(angle), "+r"(currentAngle), "+r"(target));
        otherCoordinate = *(int *)(target + 8);
        asm volatile("" : "+r"(angle), "+r"(otherCoordinate), "+r"(currentAngle));
        angle -= currentAngle;
        currentAngle = *(int *)(savedActor + 8);
        otherCoordinate -= currentAngle;
        angle = __atan2(angle, otherCoordinate);

        currentAngle = *(unsigned short *)(savedActor + 6);
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle <<= 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle = (unsigned int)angle >> 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle -= currentAngle;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle <<= 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle >>= 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        if (angle != 0) {
            limit = 0x80;
            limit <<= 5;
            if (angle > limit)
                angle = limit;
            limit = -0x1000;
            if (angle < limit)
                angle = limit;
            currentAngle += angle;
            *(unsigned short *)(savedActor + 6) = currentAngle;
        }
    }
    return 1;
}

unsigned char *OvlFunc_907_2008088(void)
{
    register unsigned char *state asm("r3");
    register int offset asm("r1");
    register int map asm("r2");

    state = gState;
    asm volatile("" : "+r"(state));
    offset = 0xe0;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    state += offset;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset = 0;
    asm volatile("" : "+r"(state), "+r"(offset));
    map = *(short *)(state + offset);
    asm volatile("" : "+r"(map));

    if (map == (int)Value_1e)
        return Script_11ec;
    if (map == (int)Value_23)
        return Script_130c;
    if (map == (int)Value_20)
        return Script_136c;
    return Script_11d4;
}

unsigned char *OvlFunc_907_20080dc(void)
{
    register unsigned char *state asm("r3");
    register int offset asm("r1");
    register int map asm("r2");
    register int expected asm("r3");
    register unsigned char *result asm("r0");

    state = gState;
    asm volatile("" : "+r"(state));
    offset = 0xe0;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    state += offset;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset = 0;
    asm volatile("" : "+r"(state), "+r"(offset));
    map = *(short *)(state + offset);
    asm volatile("" : "+r"(map));

    expected = (int)Value_20;
    asm volatile("" : "+r"(map), "+r"(expected));
    result = 0;
    asm volatile("" : "+r"(result), "+r"(map), "+r"(expected));
    if (map == expected)
        result = gOvl_020093fc;
    return result;
}

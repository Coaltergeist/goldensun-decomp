extern int __atan2(int y, int x);
extern unsigned char gState[];
extern unsigned char gScript_913__0200afc8[];

extern unsigned char Value_26[] asm("0x26");
extern unsigned char Value_27[] asm("0x27");
extern unsigned char Script_2e60[] asm(".L2e60");
extern unsigned char Script_2f80[] asm(".L2f80");
extern unsigned char Script_3010[] asm(".L3010");

int OvlFunc_911_2008114(unsigned char *actor) {
    register unsigned char *savedActor asm("r5") = actor;
    register unsigned char *target asm("r1") =
        *(unsigned char **)(savedActor + 0x68);

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
        asm volatile("" : "+r"(angle), "+r"(otherCoordinate),
                     "+r"(currentAngle));
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

unsigned char *OvlFunc_911_200816c(void) {
    register unsigned int value asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    offset = 0xe0;
    offset <<= 1;
    asm volatile("" : "+r"(value), "+r"(offset));
    value += offset;
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    state = *(short *)(value + offset);

    value = (unsigned int)Value_27;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_2f80;
    value = (unsigned int)Value_26;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return gScript_913__0200afc8;
    return Script_2e60;
}

unsigned char *OvlFunc_911_20081ac(void) {
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

    expected = (int)Value_26;
    asm volatile("" : "+r"(map), "+r"(expected));
    result = 0;
    asm volatile("" : "+r"(result), "+r"(map), "+r"(expected));
    if (map == expected)
        result = Script_3010;
    return result;
}

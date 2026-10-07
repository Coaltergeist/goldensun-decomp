unsigned int OvlFunc_943_200b464(unsigned int arg0);

void OvlFunc_943_200b3b8(void)
{
    extern unsigned char Lm943_5b70[] __asm__(".Lm943_5b70");
    unsigned int *p;
    unsigned int i;

    p = (unsigned int *)Lm943_5b70;
    for (i = 0; i <= 3; i++, p++) {
        if (OvlFunc_943_200b150(i) != 0) {
            *p = OvlFunc_943_200b464(i);
        } else {
            *p = 3;
        }
    }

    if (OvlFunc_943_200b150(0) != 0) {
        ((unsigned int *)Lm943_5b70)[0] = OvlFunc_943_200b464(0);
    } else {
        ((unsigned int *)Lm943_5b70)[0] = 3;
    }

    if (OvlFunc_943_200b150(2) != 0) {
        ((unsigned int *)Lm943_5b70)[1] = OvlFunc_943_200b464(2);
    } else {
        ((unsigned int *)Lm943_5b70)[1] = 3;
    }

    ((unsigned int *)Lm943_5b70)[2] = 3;
    ((unsigned int *)Lm943_5b70)[3] = 3;

    if (OvlFunc_943_200b150(1) != 0) {
        ((unsigned int *)Lm943_5b70)[4] = OvlFunc_943_200b464(1);
    } else {
        ((unsigned int *)Lm943_5b70)[4] = 3;
    }

    if (OvlFunc_943_200b150(3) != 0) {
        ((unsigned int *)Lm943_5b70)[5] = OvlFunc_943_200b464(3);
    } else {
        ((unsigned int *)Lm943_5b70)[5] = 3;
    }

    ((unsigned int *)Lm943_5b70)[6] = 3;
    ((unsigned int *)Lm943_5b70)[7] = 3;
}

extern unsigned char L441c[] __asm__(".L441c");

void OvlFunc_954_2008178(void)
{
    unsigned int count;
    int *p;

    __WaitFrames(10);
    p = (int *)L441c;
    count = 0;
    if (*p == 0x16)
        return;
    do {
        __WaitFrames(1);
        count++;
        if (count > 0x77)
            break;
    } while (*p == 0x16);
}

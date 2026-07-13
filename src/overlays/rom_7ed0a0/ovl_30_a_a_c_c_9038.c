extern void __WaitFrames(int frames);

void OvlFunc_964_2009038(unsigned char *object)
{
    int count = 60;
    register int y asm("r2");
    register int current asm("r3");

loop:
    if (count == 0)
        goto timeout;
    __WaitFrames(1);
    current = *(int *)(object + 0xc);
    y = *(int *)(object + 0x14);
    asm volatile("" : "+r"(current), "+r"(y));
    count--;
    if (current <= y)
        goto finish;
    goto loop;
timeout:
    y = *(int *)(object + 0x14);
finish:
    *(int *)(object + 0x28) = 0;
    *(int *)(object + 0xc) = y;
    *(unsigned int *)(object + 0x3c) = 0x80000000;
}

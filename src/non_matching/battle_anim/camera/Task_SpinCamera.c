extern unsigned char iwram_3001eec[];

void Task_SpinCamera(void)
{
    unsigned int base;
    unsigned int *camPtr;
    int *counter;
    int d;

    base = *(unsigned int *)iwram_3001eec;
    camPtr = *(unsigned int **)((char *)iwram_3001eec - 0x6c);
    counter = (int *)(base + 0x77b0);

    if (*counter == 1) {
        d = *(int *)(base + 0x77ac);
        *(unsigned short *)((char *)camPtr + 0x36) += d;
        *counter = 0;
    } else {
        int rounded;
        d = *(int *)(base + 0x77ac);
        d = d + ((unsigned int)d >> 31);
        rounded = d >> 1;
        *(unsigned short *)((char *)camPtr + 0x36) += rounded;
        if (*counter == 2) {
            *counter = 0;
        } else {
            *counter = 2;
        }
    }
}

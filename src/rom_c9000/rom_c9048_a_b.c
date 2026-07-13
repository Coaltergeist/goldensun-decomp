extern unsigned char *iwram_3001eec;
extern unsigned short iwram_3001ad0[];

void Func_80c90e4(void)
{
    unsigned char *state = iwram_3001eec;
    int *timer = (int *)(state + 0x7790);
    int frame = *timer + 1;

    *timer = frame;
    if (frame == *(int *)(state + 0x7794)) {
        iwram_3001ad0[2] += *(int *)(state + 0x7798);
        iwram_3001ad0[3] += *(int *)(state + 0x779c);
        *timer = 0;
    }
}

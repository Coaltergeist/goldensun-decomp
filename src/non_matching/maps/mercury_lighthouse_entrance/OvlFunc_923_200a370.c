extern unsigned char gState[];
extern int __Random(void);

void OvlFunc_923_200a370(void)
{
    unsigned int *state;
    char *base;
    int *arg;

    state = (unsigned int *)**(unsigned int **)&iwram_3001edc;
    base = *(char **)((char *)&iwram_3001edc - 0x20);
    arg = *(int **)(base + *(int *)(gState + 0x1f4) * 4 + 0x14);
    if (state[2] != 0) {
        state[2]--;
    } else {
        OvlFunc_923_2009bc8(arg);
        state[2] = (((unsigned int)__Random() * 30) >> 16) + 10;
    }
}

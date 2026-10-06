typedef struct { unsigned char _bytes[704]; } GlobalState;

extern unsigned char iwram_3001f30[];

extern GlobalState gState;

extern void Func_8097608(void);

void Func_8096ab0(void)
{
    unsigned char *p;

    p = *(unsigned char **)iwram_3001f30;
    if (*(short *)(p + 0x1e) == 2) {
        unsigned char *q;
        Func_8097608();
        if (*(short *)((char *)&gState + 0x24a) != *(short *)(p + 0x1a)) {
            q = *(unsigned char **)(p + 0x14);
            *(q + 0x5b) = 0;
        }
    }
}

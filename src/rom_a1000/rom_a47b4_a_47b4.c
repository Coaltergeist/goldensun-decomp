extern unsigned char iwram_3001f2c[];
extern int Func_80a10d0(unsigned int *box, int x, int y, int arg2, int arg3, int flags);
extern void Func_80a22f4(void);
extern int Func_80a4924(unsigned int param_1, unsigned int param_2);

int Func_80a47b4(int index)
{
    unsigned char *state = *(unsigned char **)iwram_3001f2c;
    unsigned int *box = (unsigned int *)(state + 0x30);
    int idx = index;
    unsigned short val;
    int off;

    Func_80a10d0(box, 0, 0, 0xd, 10, 2);
    Func_80a22f4();

    off = 0xbc;
    off = off << 1;
    idx = idx << 1;
    off = off + idx;
    val = *(unsigned short *)(state + off);
    if (val != 0) {
        unsigned int deref;
        unsigned int valArg;
        __asm__ volatile("" : "=r"(deref), "=r"(valArg) : "0"(*box), "1"((unsigned int)val));
        Func_80a4924(deref, valArg);
    }
    return 1;
}

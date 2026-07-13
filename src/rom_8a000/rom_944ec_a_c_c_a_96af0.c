extern unsigned char iwram_3001f30[];

extern void Func_80984c0(void);
extern void Func_8099738(void);
extern void Func_809b648(void);

void Func_8096af0(void)
{
    unsigned int state = *(signed short *)(*(unsigned char **)iwram_3001f30 + 0x1e);

    switch (state) {
    case 8:
        Func_80984c0();
        break;
    case 10:
        Func_8099738();
        break;
    case 16:
        Func_809b648();
        break;
    }
}

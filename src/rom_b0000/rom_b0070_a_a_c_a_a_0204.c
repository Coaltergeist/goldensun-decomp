extern unsigned char iwram_3001f2c[];
extern void Func_80b00f4(void);
extern int StopTask(void *task);
extern void Func_8019a54(void) asm("_Func_8019a54");
extern void Func_8003f3c(unsigned short arg0);
extern void gfree(int index);

void Func_80b0204(void)
{
    unsigned char *r5;

    r5 = *(unsigned char **)iwram_3001f2c;
    StopTask(Func_80b00f4);
    Func_8019a54();
    Func_8003f3c(*(unsigned short *)(r5 + 0xe4 * 4));
    Func_8003f3c(*(unsigned short *)(r5 + 0x392));
    Func_8003f3c(*(unsigned short *)(r5 + 0xe5 * 4));
    Func_8003f3c(*(unsigned short *)(r5 + 0x396));
    Func_8003f3c(*(unsigned short *)(r5 + 0xe6 * 4));
    Func_8003f3c(*(unsigned short *)(r5 + 0x39a));
    gfree(0x37);
}

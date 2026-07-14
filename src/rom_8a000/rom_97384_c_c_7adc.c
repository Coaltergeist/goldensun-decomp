extern unsigned int iwram_3001e8c;
extern unsigned char gState[];
extern void Func_8097868(void);
extern void StopTask(void *task);
extern void _SetUIColor(int a, int b);

void Func_8097adc(void)
{
    unsigned int base = iwram_3001e8c;

    StopTask(Func_8097868);
    *(volatile unsigned short *)0x50001e2 = 0x7fff;
    *(volatile unsigned short *)0x50001e6 = 0;
    *(volatile unsigned short *)0x50001f6 = 0x294a;
    *(volatile unsigned short *)0x50001f8 = 0x5294;
    _SetUIColor(gState[0x205], gState[0x206]);
    *(unsigned char *)(base + 0xea4) = 0;
}

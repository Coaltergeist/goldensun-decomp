extern unsigned char L45[] __asm__(".L45");
extern unsigned char L29[] __asm__(".L29");
extern unsigned char L19[] __asm__(".L19");
extern unsigned char L26[] __asm__(".L26");
extern unsigned char L32[] __asm__(".L32");
extern void OvlFunc_common1_1334(void);
extern int OvlFunc_common1_1354;

void OvlFunc_common1_1490(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    OvlFunc_common1_1334();
    *(unsigned short *)L45 = (unsigned short)arg0;
    *(unsigned short *)L29 = (unsigned short)arg1;
    *(unsigned short *)L19 = (unsigned short)(arg2 & 3);
    *(unsigned short *)L26 = 0;
    *(unsigned short *)L32 = 0;
    __StartTask(&OvlFunc_common1_1354, 0xc8 << 4);
}

#include "dma.h"

extern unsigned char iwram_3001e6c[];
extern unsigned int iwram_3001e40;
extern void (*iwram_3001cfc)(void);
extern unsigned char ewram_201c000[];
extern unsigned char gBuffer[];
extern void Func_801179c(void);
extern void Func_8011568(void);
extern void Func_80042c8(void (*task)(void));
extern void WaitFrames(int frames);
extern void Func_8012388(void *source, void *destination);

void Func_8011590(void)
{
    register unsigned int *slots asm("r3") = (unsigned int *)iwram_3001e6c;
    register unsigned char *source asm("r5");
    register unsigned int one asm("r6");
    register unsigned char *state asm("r7");
    register unsigned int frame asm("r2");
    register unsigned int work asm("r3");

    source = (unsigned char *)*slots++;
    state = (unsigned char *)*slots;
    work = (unsigned int)state;
    work += 0xfc;
    one = 1;
    *(unsigned char *)work = one;
    Func_80042c8(Func_801179c);
    DMA3_COPY((void *)0x06004000, ewram_201c000, 0x2000);
    WaitFrames(1);
    frame = iwram_3001e40;
    frame &= one;
    work = frame << 2;
    work += frame;
    work <<= 10;
    source += work;
    work = 0xc8;
    work <<= 4;
    source += work;
    Func_8012388(source, gBuffer);
    work = 0x80;
    work <<= 1;
    frame = (unsigned int)(state + work);
    work = 0xc8;
    *(unsigned short *)frame = work;
    work += 0x3a;
    frame = (unsigned int)(state + work);
    work = 0xff;
    *(unsigned short *)frame = work;
    iwram_3001cfc = Func_8011568;
}

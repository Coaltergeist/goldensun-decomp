extern void _DeleteSprite(unsigned int);

typedef struct { unsigned int sad, dad, cnt; } DmaReg;

void Func_809bb34(unsigned int *p)
{
    unsigned int zero;
    DmaReg tmp;
    volatile DmaReg *dma;

    zero = 0;
    if (*p != 0) {
        _DeleteSprite(*p);
    }
    dma = (volatile DmaReg *)0x040000D4;
    tmp.sad = (unsigned int)&zero;
    tmp.dad = (unsigned int)p;
    tmp.cnt = 0x85000012;
    *dma = tmp;
}

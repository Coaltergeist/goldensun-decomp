extern unsigned char iwram_30000c4[];

void Func_80bd7a4(void)
{
    DMA3_COPY(0, 0, 0);
    DMA3_COPY(0, 0, 0);
    DMA3_COPY(0, 0, 0);
    {
        void (*f)(void) = *(void (**)(void))iwram_30000c4;
        f();
    }
}

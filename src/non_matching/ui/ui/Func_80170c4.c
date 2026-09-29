extern unsigned int REG_DMA3SAD;

unsigned int Func_80170c4(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	if ((int)arg2 > 0) {
		unsigned short buf[2];
		unsigned int *dma;

		buf[1] = (unsigned short)arg1;
		dma = &REG_DMA3SAD;
		*dma++ = (unsigned int)&buf[1];
		*dma++ = arg0;
		*dma++ = 0x81000000 | arg2;
		arg0 += arg2 * 2;
	}
	return arg0;
}

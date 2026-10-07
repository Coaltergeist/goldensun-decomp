void Func_80198dc(void)
{
	unsigned char *base;
	unsigned int *p;
	unsigned short *q;
	int i;

	base = *(unsigned char **)iwram_3001e8c;
	p = (unsigned int *)(base + 0x12bc);
	q = (unsigned short *)(base + 0x12dc);
	for (i = 0; i < 8; i++) {
		*p++ = 0;
		*q++ = 0;
	}
}

unsigned int Func_80bf524(unsigned int arg0)
{
	unsigned char *p;
	unsigned char *addr;
	unsigned int off;
	unsigned char v;

	p = _GetUnit(arg0);
	off = 0x9f;
	off <<= 1;
	addr = p + off;
	v = *addr;
	if (v == 0)
		return 0;
	v += 0xff;
	*addr = v;
	if ((v << 24) == 0)
		return 0;
	return 1;
}

extern int Func_8079b24(int value, int mode);
extern unsigned char *GetUnit(unsigned int unit_id);
extern int Func_80798b4(unsigned char *unit);
extern unsigned char *Func_807882c(unsigned char *unit, int slot);

int Func_8079bf8(int arg0, int arg1, int arg2, int arg3)
{
	int result;

	arg0 -= arg1;
	if (arg0 < 0) {
		arg0 = 0;
	}

	result = Func_8079b24(arg3, 1) * (arg0 + arg2 * 2) / 0x200;
	if (result < 0) {
		result = 0;
	}

	return result;
}

int Func_8079c30(int arg0, int arg1, int arg2)
{
	int result = Func_8079b24(arg1, 0) * arg0;

	result *= arg2;
	return result / 0x10000;
}

int Func_8079c5c(int arg0, int arg1, int arg2)
{
	int result = Func_8079b24(arg1 * 2 - 0xc8, 0) * arg0;

	result *= arg2;
	return result / 0x10000;
}

int Func_8079c8c(unsigned int unit_id)
{
	unsigned char *unit = GetUnit(unit_id);
	unsigned char *item;

	if (unit[0x129] == 0) {
		return Func_80798b4(unit);
	}

	item = Func_807882c(unit, 1);
	if (item != 0) {
		return *(int *)(item + 0x14);
	}

	return 4;
}

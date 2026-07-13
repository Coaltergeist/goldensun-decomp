#include "unit.h"

extern int Func_8079b24(int value, int mode);
extern int Func_80798b4(struct Unit *unit);
extern unsigned char *Func_807882c(struct Unit *unit, int slot);

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
	struct Unit *unit = GetUnit(unit_id);
	unsigned char *equippedItem;

	if (unit->classId == 0) {
		return Func_80798b4(unit);
	}

	equippedItem = Func_807882c(unit, 1);
	if (equippedItem != 0) {
		return *(int *)(equippedItem + 0x14);
	}

	return 4;
}

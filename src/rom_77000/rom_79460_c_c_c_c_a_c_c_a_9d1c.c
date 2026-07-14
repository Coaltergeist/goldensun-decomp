#include "unit.h"

extern unsigned char *Func_807882c(struct Unit *unit, int slot);
extern int CheckEquipmentCritBoost(struct Unit *unit);
extern int RPGRandom(void);

int Func_8079d1c(struct Unit *unit)
{
	unsigned char *item;
	int chance;

	if (unit->classId == 0) {
		return 1;
	}

	item = Func_807882c(unit, 1);
	if (item == 0) {
		return 1;
	}

	if (*(unsigned short *)(item + 0xe) == 0) {
		return 1;
	}

	chance = (CheckEquipmentCritBoost(unit) + *(unsigned char *)(item + 0xb) * 5) << 16;
	chance = chance / 100;
	if (chance > (RPGRandom() & 0xffff)) {
		return *(unsigned short *)(item + 0xe);
	}

	return 1;
}

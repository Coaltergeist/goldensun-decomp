/* rpg/unknown_8077320.c */
#include "nonmatching.h"

extern void GameInit(void);
extern void _GameStart(int);
extern void *GetUnit(int unit);
extern unsigned char ewram_200024c[];

void Debug_StartGame(void)
{
	GameInit();
	_GameStart(0);
}

void *Func_8077330(int r0) {
    if (r0 != 0) {
        return GetUnit(0x83);
    }
    return ewram_200024c;
}

INCLUDE_ASM("asm/rpg/unknown_8077320/Func_8077348.s");

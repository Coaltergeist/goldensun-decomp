/* field/moves/halt.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/moves/halt/rom_9ad70_a_a_a.s");

extern unsigned int MapActor_GetName(unsigned int actorID);

unsigned int Func_809ae3c(unsigned int arg0)
{
	unsigned int r5;
	r5 = arg0;
	if (MapActor_GetName(r5) == 0xff)
		return -1;
	return r5;
}

extern void Field_Catch(void);

void Field_Catch_Target(void) {
    Field_Catch();
}

INCLUDE_ASM("asm/field/moves/halt/rom_9ad70_a_c.s");

void Func_809b0b0(unsigned int arg0)
{
    unsigned short *p;
    unsigned short *base;
    int n;
    unsigned int v;

    base = (unsigned short *)arg0;
    p = (unsigned short *)(arg0 + 0x64);
    n = *(short *)p;
    v = (unsigned int)((n * 5) << 4);
    base[3] = (unsigned short)(base[3] + v + 0x1000);
    if (v < 0x1000) {
        *p = *p + 1;
    }
}

INCLUDE_ASM("asm/field/moves/halt/rom_9ad70_c_a.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char iwram_3001e40[];

void Func_809b588(void)
{
    unsigned char *gs;
    unsigned int arg0;
    unsigned char *pAVar1;
    unsigned char *sprite;
    unsigned char *layer;
    unsigned char *p;
    unsigned int uVar2;
    unsigned char flag;

    gs = (unsigned char *)&gState;
    gs += (0xfa << 1);
    arg0 = *(unsigned int *)gs;
    pAVar1 = (unsigned char *)GetFieldActor(arg0);
    sprite = *(unsigned char **)(pAVar1 + 0x50);
    layer = *(unsigned char **)(sprite + 0x28);
    uVar2 = *(unsigned int *)iwram_3001e40 % 5;
    if (uVar2 == 0) {
        p = sprite;
        p += 0x25;
        flag = 1;
        *p = flag;
        p += 1;
        flag = 3;
    } else if (uVar2 == 2) {
        p = sprite;
        p += 0x25;
        layer[5] = 0;
        flag = 1;
        *p = flag;
        p += 1;
    } else {
        return;
    }
    *p = flag;
}

INCLUDE_ASM("asm/field/moves/halt/rom_9ad70_c_c.s");

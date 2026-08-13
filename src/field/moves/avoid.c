/* field/moves/avoid.c */
#include "nonmatching.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char iwram_3001e40[];

INCLUDE_ASM("asm/field/moves/avoid/Func_809b364.s");

INCLUDE_ASM("asm/field/moves/avoid/Func_809b3d8.s");

INCLUDE_ASM("asm/field/moves/avoid/Func_809b450.s");

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

INCLUDE_ASM("asm/field/moves/avoid/Func_809b5dc.s");

INCLUDE_ASM("asm/field/moves/avoid/Func_809b648.s");

INCLUDE_ASM("asm/field/moves/avoid/Field_Avoid.s");

INCLUDE_ASM("asm/field/moves/avoid/rodata.s");

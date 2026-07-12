#include "math.h"

extern unsigned char iwram_3001e80[];
extern unsigned char Data_c2a7c[] asm(".Lc2a7c");
extern void InitMatrixStack(void);
extern int _GetFlag(int flag);
extern void Func_8000a30(void *matrix);
extern int MatrixLook(void *matrix, void *vector);
extern int MatrixSetLook(void *matrix, void *vector);
extern unsigned char **GetBattleActor(int actor);
extern unsigned int Func_80b7f70(unsigned int actor, unsigned int index);
extern int PhysMove(int *position, int amount);

int Func_80b7ed8(void)
{
    register unsigned char *matrix asm("r5") = *(unsigned char **)iwram_3001e80;

    InitMatrixStack();
    if (_GetFlag(0x16b) != 0) {
        register void *argument asm("r0") = Data_c2a7c;
        register void (*multiply)(void *) asm("r3") = Func_8000a30;

        multiply(argument);
        return MatrixLook(matrix, matrix + 0xc);
    } else {
        return MatrixSetLook(matrix, matrix + 0xc);
    }
}

int Func_80b7f20(int actorID, int amount)
{
    int position[3];
    register int amountReg asm("r8") = amount;
    register unsigned char *actor asm("r5");
    register unsigned char *data asm("r6");

    asm volatile("" : "+r"(amountReg));
    actor = *GetBattleActor(actorID);
    data = (unsigned char *)Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    position[0] = *(int *)(actor + 8);
    position[1] = *(int *)(actor + 0xc);
    position[2] = *(int *)(actor + 0x10);
    fx32_multiply(PhysMove(position, amountReg), *(int *)(data + 0x18));
    return 0;
}

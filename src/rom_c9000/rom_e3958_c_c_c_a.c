#include "math.h"

extern unsigned char *iwram_3001e80;
extern unsigned char **_GetBattleActor(int unit);
extern unsigned char *_Func_80b7f70(unsigned char *actor, int index);
extern void InitMatrixStack(void);
extern void MatrixSetLook(void *matrix, void *look);
extern int PhysMove(void *source, void *destination);
extern int _Func_80b8530(int unit);

int Func_80e3994(int unit, int *destination)
{
    register int call_unit asm("r0") = unit;
    register int *destination_arg asm("r1") = destination;
    register int *saved_destination asm("r8");
    register int saved_unit asm("r9");
    register unsigned char *data asm("r10");
    register unsigned char **matrix_address asm("r3");
    register unsigned char *matrix asm("r6");
    register unsigned char *actor asm("r5");
    register int amount asm("r6");
    register unsigned char *data_copy asm("r2");
    register int *destination_copy asm("r2");
    register void *matrix_arg0 asm("r0");
    register void *matrix_arg1 asm("r1");
    register void *phys_arg0 asm("r0");
    register void *phys_arg1 asm("r1");
    register int result asm("r0");

    asm volatile(
        "ldr %0, .LFunc_80e3994_literals\n"
        "sub sp, #12"
        : "=r"(matrix_address));
    matrix = *matrix_address;
    asm volatile("" : "+r"(matrix), "+r"(destination_arg));
    saved_destination = destination_arg;
    saved_unit = call_unit;
    asm volatile("" : "+r"(call_unit), "+r"(saved_destination), "+r"(saved_unit), "+r"(matrix));
    actor = *_GetBattleActor(call_unit);
    data = _Func_80b7f70(actor, 0);
    InitMatrixStack();
    matrix_arg1 = matrix;
    matrix_arg0 = matrix;
    asm volatile("" : "+r"(matrix_arg0), "+r"(matrix_arg1));
    matrix_arg1 += 0xc;
    asm volatile("" : "+r"(matrix_arg0), "+r"(matrix_arg1));
    actor += 8;
    asm volatile("" : "+r"(actor), "+r"(matrix_arg0), "+r"(matrix_arg1));
    MatrixSetLook(matrix_arg0, matrix_arg1);
    phys_arg1 = saved_destination;
    asm volatile("" : "+r"(phys_arg1));
    phys_arg0 = actor;
    asm volatile("" : "+r"(phys_arg0), "+r"(phys_arg1));
    result = PhysMove(phys_arg0, phys_arg1);
    {
        register fx32 (*multiply_reg)(fx32, fx32) asm("r5");
        register int multiplier asm("r1");

        data_copy = data;
        asm volatile("" : "+r"(data_copy));
        asm volatile("ldr %0, .LFunc_80e3994_literals+4" : "=r"(multiply_reg));
        asm volatile("" : "+r"(data_copy), "+r"(multiply_reg));
        multiplier = *(int *)(data_copy + 0x18);
        asm volatile(
            ".align 2, 0\n"
            "mov r12, pc\n"
            "bx %0"
            :
            : "r"(multiply_reg), "l"(result), "l"(multiplier)
            : "r0", "r1", "r2", "r12");
        amount = result;
        multiplier = _Func_80b8530(saved_unit);
        multiplier >>= 17;
        result = amount;
        asm volatile(
            ".align 2, 0\n"
            "mov r12, pc\n"
            "bx %0"
            :
            : "r"(multiply_reg), "l"(result), "l"(multiplier)
            : "r0", "r1", "r2", "r12");
        destination_copy = saved_destination;
        asm volatile("" : "+r"(destination_copy), "+r"(result));
        destination_copy[1] -= result;
        asm volatile("" : "+r"(destination_copy));
    }
    result = 0;
    asm volatile("" : "+r"(result));
    asm volatile("add sp, #12");
    return result;
}

asm(
    ".text\n"
    ".align 2, 0\n"
    ".LFunc_80e3994_literals:\n"
    ".word iwram_3001e80\n"
    ".word Func_8000888\n"
    ".size Func_80e3994, .-Func_80e3994\n");

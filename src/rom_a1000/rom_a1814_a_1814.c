#include "gba/types.h"

extern int Func_80a10d0_r0123(unsigned int *box, int x, int y, int arg2) asm("Func_80a10d0");
extern int Func_80a1778(unsigned int x, unsigned int y, unsigned int arg4);

void *Func_80a1814(void *actor)
{
    register u8 *base asm("r5");
    unsigned int boxVal;
    u8 *result;
    u8 *field18;
    register int zero asm("r3");
    register unsigned int zeroHigh asm("r8");
    register unsigned int boxAddr asm("r6");

    base = (u8 *)actor;
    zero = 0;
    __asm__ volatile("sub\tsp, #8" ::: "memory");
    zeroHigh = zero;
    __asm__ volatile("" : "+r"(zeroHigh));
    *(unsigned int *)(base + 0x10) = zero;
    __asm__ volatile("" ::: "memory");
    boxAddr = (unsigned int)base;
    __asm__ volatile(
        "mov r3, #5\n\t"
        "str r3, [sp]"
        ::: "r3", "memory");
    boxAddr += 0x10;
    __asm__ volatile(
        "mov r3, #2\n\t"
        "str r3, [sp, #4]"
        ::: "r3", "memory");
    Func_80a10d0_r0123((unsigned int *)boxAddr, 0, 0, 0xd);
    boxVal = *(unsigned int *)boxAddr;
    result = (u8 *)Func_80a1778(boxVal, -8, 0xb);

    {
        register unsigned int scratch asm("r3");

        scratch = 0xd;
        __asm__ volatile("" : "+r"(scratch));
        result[5] = scratch;

        scratch = 0xff;
        __asm__ volatile("" : "+r"(scratch));
        base[0x1c] = scratch;

        scratch = zeroHigh;
        __asm__ volatile("" : "+r"(scratch));
        base[0x1d] = scratch;

        scratch = 0xfe;
        __asm__ volatile("" : "+r"(scratch));
        *(u8 **)(base + 0x14) = result;
        result[0xf] = scratch;

        field18 = *(u8 **)(base + 0x18);
        __asm__ volatile("" : "+r"(field18));
        scratch = scratch - 0xff;
        {
            register void *retval asm("r0");
            retval = (void *)boxVal;
            __asm__ volatile("" : "+r"(scratch), "+r"(retval));
            field18[0xf] = scratch;
            __asm__ volatile("add\tsp, #8" ::: "memory");
            return retval;
        }
    }
}

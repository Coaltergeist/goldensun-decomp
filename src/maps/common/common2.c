/* common2: consolidated shared-overlay TU (linked by the 2 overlays that reference it). */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/common/OvlFunc_common2_0.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common2_254.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common2_28c.s");


const void *OvlFunc_common2_2cc(void) {
    extern const unsigned char L1[] __asm__(".Lc2_1");
    return L1;
}

unsigned int OvlFunc_common2_2d4(unsigned int *p) {
    return *p <= 1;
}

unsigned int OvlFunc_common2_2e4(int *p)
{
    unsigned int r2 = 0;
    if (*p == 4)
        r2 = 1;
    return r2;
}

unsigned int OvlFunc_common2_2f4(int *p)
{
    unsigned int result;
    result = 0;
    if (*p == 2)
        result = 1;
    return result;
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common2_304.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common2_380.s");

unsigned int OvlFunc_common2_3ec(int *p) {
    return (unsigned int)*p < 2;
}

unsigned int OvlFunc_common2_3fc(int *p)
{
    unsigned int r2 = 0;
    if (*p == 4)
        r2 = 1;
    return r2;
}

unsigned int OvlFunc_common2_40c(unsigned int *p) {
    unsigned int r2 = 0;
    if (*p == 2)
        r2 = 1;
    return r2;
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common2_41c.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common2_44c.s");

unsigned int OvlFunc_common2_5e8(unsigned int *p) {
    return *p <= 1;
}

unsigned int OvlFunc_common2_5f8(int *p) {
    unsigned int r2 = 0;
    if (*p == 4)
        r2 = 1;
    return r2;
}

unsigned int OvlFunc_common2_608(unsigned int *p) {
    return *p == 2;
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common2_618.s");

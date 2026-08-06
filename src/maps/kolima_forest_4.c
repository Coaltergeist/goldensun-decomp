/* rom_7a37f0 (overlay file 916): consolidated TU — kolima_forest_4 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima_forest_4/exports.s");

extern unsigned char gOvl_02009170[];

unsigned int KolimaForest4_GetEntrances(void) {
    return (unsigned int)gOvl_02009170;
}

unsigned int KolimaForest4_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020091d0[];

void *KolimaForest4_GetExits(void) {
    return (void *)gOvl_020091d0;
}
extern unsigned char gOvl_020091e0[];

void *KolimaForest4_GetActors(void) {
    return (void *)gOvl_020091e0;
}
extern unsigned char gOvl_02009240[];

void *KolimaForest4_GetEvents(void) {
    return (void *)gOvl_02009240;
}

INCLUDE_ASM("asm/maps/kolima_forest_4/ovl_30_c_c_a.s");

extern void __Func_8093c00(void);

void OvlFunc_916_200808c(void) {
    __Func_8093c00();
}

INCLUDE_ASM("asm/maps/kolima_forest_4/ovl_30_c_c_c_a_a.s");

extern unsigned int iwram_3001ad4[];
extern unsigned int L20d0[] __asm__(".Lm916_20d0");

void OvlFunc_916_20083c0(void) {
    unsigned int *src;
    unsigned int *dst;
    unsigned short *h;

    src = iwram_3001ad4;
    dst = L20d0;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst = *src;

    h = (unsigned short *)L20d0;
    h[1] += 0xb0;
    h[3] += 0xb0;
    h[5] += 0xb0;
}

INCLUDE_ASM("asm/maps/kolima_forest_4/ovl_30_c_c_c_a_c.s");

#include "dma.h"
extern void *iwram_3001ed0;
extern unsigned char L12d0[] __asm__(".Lm916_12d0");

void OvlFunc_916_2008f34(void) {
    DMA3_COPY(iwram_3001ed0, L12d0, 0x380);
}

#include "dma.h"
extern unsigned char L19d0[] __asm__(".Lm916_19d0");

void OvlFunc_916_2008f54(void) {
    DMA3_COPY(iwram_3001ed0, L19d0, 0x380);
}

INCLUDE_ASM("asm/maps/kolima_forest_4/ovl_30_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/kolima_forest_4/imports.s");

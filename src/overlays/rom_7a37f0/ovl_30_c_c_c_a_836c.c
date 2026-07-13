typedef unsigned short u16;
typedef unsigned int u32;

#define REG_VCOUNT (*(volatile u16 *)0x04000006)
#define REG_BG1HOFS (*(volatile u32 *)0x04000014)
#define REG_BG2HOFS (*(volatile u32 *)0x04000018)

extern u32 iwram_3001ad4[];
extern u32 OvlWaterScroll_20d0[] asm(".L20d0");
extern u32 OvlWaterScrollChance_20dc[] asm(".L20dc");
extern u32 __Random(void);

/* 水面スクロール値をVBlank側へ転送 */
void OvlFunc_916_200836c(void)
{
    register u32 *scroll asm("r5") = iwram_3001ad4;
    register volatile u32 *bg1 asm("r6") = &REG_BG1HOFS;
    register u32 line asm("r3") = REG_VCOUNT;

    if ((line == 0xe3 || line <= 0x34) &&
        ((__Random() * 100) >> 16) < OvlWaterScrollChance_20dc[0])
        scroll = OvlWaterScroll_20d0;

    *bg1 = *scroll++;
    bg1 = &REG_BG2HOFS;
    *bg1++ = *scroll++;
    *bg1 = *scroll;
}

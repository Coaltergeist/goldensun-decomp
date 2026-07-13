typedef unsigned short u16;
typedef unsigned int u32;

#define REG_VCOUNT (*(volatile u16 *)0x04000006)
#define REG_BG1HOFS (*(volatile u32 *)0x04000014)
#define REG_BG2HOFS (*(volatile u32 *)0x04000018)
extern u32 iwram_3001ad4[];
extern u32 OvlData_947_200b72c[] asm(".L372c");
extern u32 OvlData_947_200b738[] asm(".L3738");
extern u32 __Random(void);

/* 水面スクロール値をVBlank側へ転送 */
void OvlFunc_947_2009578(void)
{
    register u32 *scroll asm("r5") = iwram_3001ad4;
    register volatile u32 *bg1 asm("r6") = &REG_BG1HOFS;
    register u32 line asm("r3") = REG_VCOUNT;

    if ((line == 0xe3 || line <= 0x2e) &&
        ((__Random() * 100) >> 16) < OvlData_947_200b738[0])
        scroll = OvlData_947_200b72c;

    *bg1 = *scroll++;
    bg1 = &REG_BG2HOFS;
    *bg1++ = *scroll++;
    *bg1 = *scroll;
}

/*
 * Matches 100% of instructions when compiled with natural `double` arithmetic:
 *   `env[9] -= 4718.592 - ((__Random() << 11) >> 16);`
 * Blocked by two toolchain/overlay-veneer issues (same as lunpa_fortress OvlFunc_959_2009150):
 * 1. Soft-float libcalls emit `__floatsidf` / `__adddf3` / `__subdf3` / `__fixdfsi` instead of
 *    the common2 overlay copies `OvlFunc_common2_304` / `_254` / `_28c` / `_380`.
 * 2. 64-bit host `xgcc` (gcc 2.96 `real.c`) corrupts the upper 32-bit word of `DFmode` literals
 *    (`0xafafafaf` instead of `0x41f00000` and `0x40b26e97`).
 */
#include "api.h"

extern unsigned int iwram_3001e70;
extern unsigned int iwram_3001e40;
extern unsigned int __Random(void);
extern void __SetRegAnimDest(unsigned int, unsigned int);
extern int _modsi3_RAM(int, int);
extern void __Func_800fe9c(void);

void OvlFunc_935_2008754(void)
{
    int *env = (int *)(iwram_3001e70 + 0x164);
    int i, a, b, c;

    API_CutsceneStart();
    if (iwram_3001e40 & 1) {
        env[6] = 1;
        env[7] = 1;
    } else {
        env[6] = -1;
        env[7] = -1;
    }
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_Func_8012330(-1, -1, 0xe666);
    API_PlaySound(0xa3);

    for (i = 0; i < 480; i++) {
        env[9] -= 4718.592 - ((__Random() << 11) >> 16);
        API_CutsceneWait(1);
    }

    a = 6;
    b = 6;
    i = 0;
    c = a << 10;
    do {
        __SetRegAnimDest(0x04000052, (a << 5) | c | b);
        API_CutsceneWait(1);
        if (_modsi3_RAM(i, 20) == 0) {
            b--;
            a--;
        }
        i++;
    } while (i <= 0x45);

    API_Func_80105d4(0x13, 0x53, 0xf, 8, 0x13, 0x5b);
    API_PlaySound(0x120);
    __Func_800fe9c();
    API_Func_8012350();
    API_CutsceneEnd();
}

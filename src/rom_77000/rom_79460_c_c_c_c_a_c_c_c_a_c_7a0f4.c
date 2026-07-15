typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];

extern s32 GetFlag(s32 flagID);
extern void SetFlag(s32 flagID);
extern s32 GetPartySize(void);
extern u8 *GetUnit(u32 unitId);
extern s32 GiveDjinni(s32 unitId, s32 element, u32 djinni);
extern u8 *Func_807a458(u32 index, u32 first, u32 second);

s32 Func_807a0f4(s32 element, s32 djinni)
{
    s32 flagId = element * 20 + djinni + 0x30;
    u32 bestUnit = 0;
    s32 bestCount = 999;
    s32 partySize;

    if (GetFlag(flagId))
        return -1;

    partySize = GetPartySize();
    if ((s32)bestUnit < partySize) {
        register u8 *partyIds asm("r6");
        register s32 i asm("r5");
        register u8 *base asm("r3") = gState;
        partyIds = base + 0x1f8;
        i = partySize;
        do {
            u8 *unit = GetUnit(*partyIds);
            s32 djinniBase = 0x118;
            if (unit[element + djinniBase] <= 9) {
                u8 *counts = unit + djinniBase;
                s32 sum = 0;
                s32 j = 3;
                do {
                    u8 b = *counts;
                    j--;
                    counts++;
                    sum += b;
                } while (j >= 0);
                if (bestCount > sum) {
                    bestCount = sum;
                    bestUnit = *partyIds;
                }
            }
            partyIds++;
            i--;
        } while (i != 0);
    }

    if (bestCount == 999)
        return -2;

    GiveDjinni(bestUnit, element, djinni);
    Func_807a458(bestUnit, element, djinni);
    SetFlag(flagId);
    return bestUnit;
}

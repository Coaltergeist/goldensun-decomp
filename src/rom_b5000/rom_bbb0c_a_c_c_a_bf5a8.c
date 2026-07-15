typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *_Func_8077330(int arg0);
extern u8 *_GetUnit(int unitId);
extern void _SetDjinni(int unitId, int elementId, u32 djinniId);
extern void _Func_807a3a8(int unitId, int elementId, u32 djinniId);
extern void _CalcStats(int unitId);

int Func_80bf5a8(void)
{
    u8 *base;
    u8 *entry;
    int i;
    int result;

    base = _Func_8077330(0);
    entry = base + 8;
    result = 0;

    i = 0;
    if (i < *(s32 *)(entry + 0x100)) {
        register u8 *ptr1 asm("r5") = entry;
        do {
            if ((s8)ptr1[3] > 0) {
                u8 *unit = _GetUnit(ptr1[2]);
                if (*(s16 *)(unit + 0x38) != 0) {
                    ((s8 *)ptr1)[3]--;
                }
            }
            i++;
            ptr1 += 4;
        } while (i < *(s32 *)(entry + 0x100));
    }

    i = 0;
    if (i < *(s32 *)(entry + 0x100)) {
        register u8 *ptr2 asm("r6") = entry;
        do {
            s8 d = ptr2[3];
            if (d == 0) {
                register int unitId asm("r5") = ptr2[2];
                _SetDjinni(unitId, ptr2[0], ptr2[1]);
                _Func_807a3a8(unitId, ptr2[0], ptr2[1]);
                _CalcStats(unitId);
                result = 1;
            } else {
                ptr2 += 4;
                i++;
            }
        } while (i < *(s32 *)(entry + 0x100));
    }

    return result;
}

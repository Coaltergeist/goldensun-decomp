typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001ebc;

extern s32 _GetFlag(s32 flag);
extern void _SetFlag(s32 flag);
extern s32 _Func_807a0f4(s32 element, s32 djinni);
extern void _Func_8021228(s32 a0, s32 a1, s32 a2);
extern void CutsceneStart(void);
extern void CutsceneEnd(void);
extern void Func_808c44c(void);
extern void Func_808c4c0(void);
extern void Func_808b8e8(void);
extern void Func_808b98c(void);
extern void GetVenusDjinni(s32 unitId);
extern void GetMercuryDjinni(s32 unitId);
extern void GetMarsDjinni(s32 unitId);
extern void GetJupiterDjinni(s32 unitId);

void Func_80955b0(s32 arg0, s32 arg1, s32 arg2)
{
    u8 *state = iwram_3001ebc;
    s32 result;
    s32 off;

    if (_GetFlag(0x16e)) {
        result = 0;
        _SetFlag(arg1 * 20 + arg2 + 0x30);
    } else {
        result = _Func_807a0f4(arg1, arg2);
    }

    if (result >= 0) {
        CutsceneStart();
        Func_808c44c();
        if (arg0 != -1) {
            if (*(s16 *)(state + 0x19e) == 3) {
                Func_808b8e8();
            }

            if (arg1 == 0) {
                GetVenusDjinni(arg0);
            } else if (arg1 == 1) {
                GetMercuryDjinni(arg0);
            } else if (arg1 == 2) {
                GetMarsDjinni(arg0);
            } else if (arg1 == 3) {
                GetJupiterDjinni(arg0);
            }

            off = arg0 * 4 + 0x14;
            *(s32 *)(state + off) = 0;

            if (*(s16 *)(state + 0x19e) == 3) {
                Func_808b98c();
            }
        }

        _Func_8021228(result, arg1, arg2);
        Func_808c4c0();
        CutsceneEnd();
    }
}

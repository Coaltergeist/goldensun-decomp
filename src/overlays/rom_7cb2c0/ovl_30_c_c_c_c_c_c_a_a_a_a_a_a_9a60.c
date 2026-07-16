typedef unsigned int u32;
typedef int s32;

extern s32 __GetFlag(s32 flag);
extern void __CutsceneStart(void);
extern void __Func_808e118(void);
extern void __Func_80933d4(u32 a, u32 b);
extern void OvlFunc_945_200c8ac(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
extern void __MessageID(s32 messageId);
extern void OvlFunc_945_200c86c(s32 actorId);
extern void OvlFunc_945_200c880(s32 actorId, s32 value);
extern void __Func_8092adc(s32 actorId, s32 value, s32 arg2);
extern void __SetFlag(s32 flag);
extern void __CutsceneEnd(void);

void OvlFunc_945_2009a60(void)
{
    if (__GetFlag(0x922) != 0) {
        __CutsceneStart();
        __Func_808e118();
        __Func_80933d4(0x19999, 0x3333);
        OvlFunc_945_200c8ac(0x1c00000, -1, 0x27e0000, 0x10000028);
        __MessageID(0x1d26);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c86c(0xa);
        OvlFunc_945_200c880(8, 0x3000);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c880(0xa, 0xd000);
        OvlFunc_945_200c86c(0xa);
        OvlFunc_945_200c880(9, 0x5000);
        OvlFunc_945_200c86c(9);
        __Func_8092adc(8, 0, 0x14);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c880(9, 0x8000);
        OvlFunc_945_200c86c(9);
        OvlFunc_945_200c86c(0xa);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c880(0xa, 0xb000);
        OvlFunc_945_200c86c(8);
        __SetFlag(0x920);
        __CutsceneEnd();
    }
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern inline void label_reservation_1(int value)
{
    if (value)
        value++;
}

extern inline void label_reservation_2(int value)
{
    if (value)
        value++;
}

typedef struct {
    u8 pad00[0x1A];
    s16 unk1A;
} CutsceneDirData;

extern CutsceneDirData L13 asm(".L13");
extern CutsceneDirData L3 asm(".L3");

extern void __PlaySound(s32 sound);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(s32 frames);
extern void OvlFunc_common1_88c(s32 variant);
extern void OvlFunc_common1_e10(s32 type, s32 direction);
extern void __MapActor_Emote(s32 actor, s32 emote, s32 duration);
extern void __WaitFrames(s32 frames);
extern s32 __Func_80f954c(void);
extern void __MapTransitionOut(void);

void OvlFunc_common1_fac(s32 arg0)
{
    s32 temp_r6;
    s32 temp_r2;
    s32 result;
    CutsceneDirData *p13;
    CutsceneDirData *p3;

    __PlaySound(0xF7);
    __MapTransitionIn();
    __WaitMapTransition();

    p13 = &L13;
    temp_r6 = arg0 * 0x3C;
    p13->unk1A = temp_r6;

    p3 = &L3;
    temp_r2 = arg0;
    if (arg0 < 0) {
        temp_r2 = -arg0;
    }
    p3->unk1A = temp_r2 * 0x3C;

    if (arg0 < 0) {
        __CutsceneWait(0x1E);
        __PlaySound(0x56);
        OvlFunc_common1_88c(8);
        {
            register s32 direction asm("r1") = 1;
            register s32 type asm("r0") = 3;
            asm volatile("" : "+r"(type), "+r"(direction));
            OvlFunc_common1_e10(type, direction);
        }
        __CutsceneWait((-arg0) * 0x3C + 0x3C);
        result = 0;
    } else {
        __CutsceneWait(0x1E);
        __PlaySound(arg0 + 0x5A);
        OvlFunc_common1_88c(4);
        {
            register s32 direction asm("r1") = 0;
            register s32 type asm("r0") = 3;
            asm volatile("" : "+r"(type), "+r"(direction));
            OvlFunc_common1_e10(type, direction);
        }
        __CutsceneWait(temp_r6 + 0x3C);
        result = 8;
    }

    __MapActor_Emote(result, 0x105, 0);
    while (__Func_80f954c() != 0) {
        __WaitFrames(1);
    }

    __PlaySound(0x13);
    __CutsceneWait(0x1E);
    __PlaySound(0x121);
    __MapTransitionOut();
    __WaitMapTransition();
}

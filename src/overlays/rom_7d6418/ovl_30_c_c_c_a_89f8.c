typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

struct GlobalState {
    u8 padding[0x10];
    u32 field_10;
};

struct WorkState {
    u8 padding[0x1d8];
    u16 field_1d8;
};

extern struct GlobalState gState;
extern struct WorkState *iwram_3001ebc;
extern u32 ewram_2001000;
extern u8 Value_89[] __asm__("0x89");

extern s32 __Func_8077348(void);
extern void __CutsceneStart(void);
extern void __CutsceneWait(int frames);
extern void __CutsceneEnd(void);
extern void __MessageID(int message);
extern void __Func_8092c40(s32 actor, s32 value);
extern void __Func_808ba38(void);
extern void __Func_8019908(int value, int tag);
extern s32 __Func_8091c7c(s32 arg0, s32 arg1);
extern void __ActorMessage(int actor, int message);
extern void __Func_80921c4(int actor, int x, int y);
extern void __Func_8092adc(int actor, int value, int duration);
extern void __SetDestMap2(int arg0, int arg1);
extern void __Func_8091f90(int arg0, int arg1);

void OvlFunc_951_20089f8(void) {
    int amount = __Func_8077348() * 10;

    __CutsceneStart();
    if (gState.field_10 < (u32)amount) {
        __MessageID(0xe12);
        __Func_8092c40(9, 0);
        return;
    }
    ewram_2001000 = gState.field_10;
    __Func_808ba38();
    __MessageID(0xe0e);
    __Func_8019908(amount, 5);
    {
        register int actor asm("r0");
        register int zero asm("r1");

        zero = 0;
        asm volatile("" : "+r"(zero));
        actor = 9;
        asm volatile("" : "+r"(actor), "+r"(zero));
        __Func_8092c40(actor, zero);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        __ActorMessage(9, 0);
        __Func_80921c4(0, 0x78, 0x80);
        __Func_80921c4(0, 0x78, 0x98);
        {
            register int actor asm("r0");
            register int value asm("r1");
            register int duration asm("r2");

            value = 0x80;
            asm volatile("" : "+r"(value));
            value <<= 8;
            asm volatile("" : "+r"(value));
            duration = 0;
            actor = 0;
            asm volatile("" : "+r"(actor), "+r"(value), "+r"(duration));
            __Func_8092adc(actor, value, duration);
        }
        __CutsceneWait(0x14);
        __SetDestMap2(0x1fd, 0);
        __Func_8091f90((int)Value_89, 0xd);
    } else {
        iwram_3001ebc->field_1d8++;
        __ActorMessage(9, 0);
    }
    __CutsceneEnd();
}

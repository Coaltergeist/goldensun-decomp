typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneWait(int);
extern void __CutsceneEnd(void);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8092848(int, int, int);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern int __MessageID(int);
extern void __Func_8093040(int, int, int);
extern void __Func_809259c(int, int);
extern void __Func_8092adc(int, int, int);
extern u8 *__MapActor_GetActor(int);
extern u32 __Random(void);
extern int _umodsi3_RAM(u32, u32);
extern void __MapActor_SetBehavior(int, const void *);
extern unsigned char gScript_882__0200cec8[];

void OvlFunc_882_200ad28(void) {
    u8 *actor;
    u32 offset;

    __CutsceneStart();
    __MapActor_SetAnim(10, 1);
    __CutsceneWait(10);
    __Func_8092848(10, 0, 0x14);
    if (__GetFlag(0x30d) != 0) {
        __MessageID(0xea5);
        __Func_8093040(10, 0, 10);
    } else {
        __MessageID(0xea4);
        __Func_809259c(10, 1);
        __Func_8093040(10, 0, 10);
        __Func_809259c(10, 2);
        __Func_8093040(10, 0, 10);
    }
    {
        register u32 r1v __asm__("r1");
        register u32 r2v __asm__("r2");
        register u32 r0v __asm__("r0");
        __asm__ volatile (
            "movs r1, #0x80\n"
            "movs r2, #0x14\n"
            "movs r0, #10\n"
            "lsl r1, r1, #6\n"
            : "=r"(r1v), "=r"(r2v), "=r"(r0v)
        );
        __Func_8092adc(r0v, r1v, r2v);
    }
    __MapActor_SetAnim(10, 5);
    __CutsceneWait(10);
    actor = __MapActor_GetActor(10);
    offset = _umodsi3_RAM(__Random(), 0x5a);
    *(s16 *)(actor + 0x64) = offset + 0x3c;
    __MapActor_SetBehavior(10, gScript_882__0200cec8);
    __CutsceneWait(0x14);
    __SetFlag(0x30d);
    __CutsceneEnd();
}

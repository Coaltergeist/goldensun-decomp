typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;
extern u8 iwram_3001ebc[];
extern void __WaitFrames(s32);
extern void __Func_808fe38(s32);
extern s32 __GetFlag(s32);
extern void OvlFunc_957_2008a54(void);

void OvlFunc_957_2008b30(void)
{
    register u8 *globals asm("r5") = iwram_3001ebc;
    u8 *state = *(u8 **)globals;
    *(s32 *)(state + 0x1c0) = 0x100;
    *(s32 *)(state + 0x1c8) = 0x18;
    __WaitFrames(1);
    __Func_808fe38(0x4d);
    globals = *(u8 **)(globals + 0x10);
    {
        register s32 offset asm("r3") = 0x52a;
        register u8 *position asm("r2") = globals + offset;
        register s32 value asm("r3") = 5;
        *(u16 *)position = value;
    }
    if (__GetFlag(0x201) != 0) {
        {
            register s32 offset asm("r3") = 0x534;
            register u8 *position asm("r2") = globals + offset;
            register s32 value asm("r3") = 0x1d1d;
            *(u16 *)position = value;
        }
        {
            register s32 offset asm("r3") = 0x536;
            register u8 *position asm("r2") = globals + offset;
            register s32 value asm("r3") = 0x3f;
            *(u16 *)position = value;
        }
        OvlFunc_957_2008a54();
    } else {
        {
            register s32 offset asm("r3") = 0x534;
            register u8 *position asm("r2") = globals + offset;
            register s32 value asm("r3") = 0x3f3f;
            *(u16 *)position = value;
        }
        {
            register s32 offset asm("r3") = 0x536;
            register u8 *position asm("r2") = globals + offset;
            register s32 value asm("r3") = 0x1f;
            *(u16 *)position = value;
        }
        {
            register s32 value asm("r2") = 0x3f42;
            register volatile u16 *blend asm("r3") = (u16 *)0x04000050;
            *blend = value;
            value = 0x0c04;
            blend++;
            *blend = value;
        }
    }
}

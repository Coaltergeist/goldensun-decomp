typedef unsigned char u8;
typedef signed short s16;

extern u8 gState[];
extern int __GetFlag(int);
extern void __ClearFlag(int);
extern void __SetFlag(int);
extern u8 *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(u8 *, int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void OvlFunc_907_20089cc(void);

void OvlFunc_907_20088f0(void)
{
    unsigned int offset;
    s16 state;

    if (__GetFlag(0x845)) {
        __MapActor_SetPos(9, 0, 0);
        {
            register int x asm("r1") = 0xc0;
            register int actor asm("r0") = 0xe;
            asm volatile("" : "+r"(x), "+r"(actor));
            x <<= 6;
            __Func_8092adc(actor, x, 0);
        }
        {
            register int x asm("r1") = 0xa0;
            register int actor asm("r0") = 0xf;
            asm volatile("" : "+r"(x), "+r"(actor));
            x <<= 7;
            __Func_8092adc(actor, x, 0);
        }
    } else {
        __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
        __MapActor_SetPos(0x15, 0, 0);
    }

    *(int *)(__MapActor_GetActor(8) + 0x1c) = 0x18000;
    offset = 0xe1;
    offset <<= 1;
    state = *(s16 *)(gState + offset);
    if (state == 10) {
        __MapActor_SetPos(8, 0, 0);
    } else if (state == 9) {
        __ClearFlag(0x12f);
    }

    if (!__GetFlag(0x109)) {
        offset = 0xe1;
        offset <<= 1;
        if (*(s16 *)(gState + offset) == 11) {
            register int x asm("r1") = 0xf8;
            register int y asm("r2") = 0xd8;
            register int actor asm("r0") = 0x14;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
            x <<= 16;
            y <<= 16;
            __MapActor_SetPos(actor, x, y);
        }
    }

    OvlFunc_907_20089cc();
    if (__GetFlag(0x84a) && !__GetFlag(0x84b)) {
        __SetFlag(0x304);
    }
}

typedef unsigned char u8;
typedef unsigned int u32;
typedef short s16;

extern u32 *iwram_3001ebc;
extern u8 gState[];
extern u8 Value_6a[] asm("0x6a");
extern int __GetFlag(int flag);
extern u8 *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __MapActor_SetAnim(int actor, int animation);
extern void OvlFunc_941_2008210(void);
extern void OvlFunc_941_2008384(void);
extern void OvlFunc_941_20080d4(void);

int OvlFunc_941_2009a0c(void)
{
    register u8 *base asm("r3");
    register int offset asm("r2");
    register u32 flag204 asm("r5");

    base = (u8 *)&iwram_3001ebc;
    offset = 0xe0;
    asm volatile("" : "+r"(base), "+r"(offset));
    base = *(u8 **)base;
    flag204 = 0x81;
    asm volatile("" : "+r"(base), "+r"(offset), "+r"(flag204));
    offset <<= 1;
    flag204 <<= 2;
    asm volatile("" : "+r"(base), "+r"(offset), "+r"(flag204));
    *(u32 *)(base + offset) = flag204;
    base = gState;
    asm volatile("" : "+r"(base), "+r"(offset), "+r"(flag204));
    offset = *(s16 *)(base + offset);
    asm volatile("" : "+r"(offset), "+r"(flag204));

    if (offset == (int)Value_6a) {
        __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(11), 0);
        *(u32 *)(__MapActor_GetActor(11) + 0x1c) = 0xf333;

        if (__GetFlag(0x201)) {
            OvlFunc_941_2008210();
        }
        if (__GetFlag(0x202)) {
            OvlFunc_941_2008384();
        }
        if (__GetFlag(0x200)) {
            OvlFunc_941_20080d4();
        }
        if (__GetFlag(0x203)) {
            __MapActor_SetAnim(11, 5);
        }
        if (__GetFlag(flag204)) {
            __MapActor_SetAnim(9, 5);
        }
    }

    return 0;
}

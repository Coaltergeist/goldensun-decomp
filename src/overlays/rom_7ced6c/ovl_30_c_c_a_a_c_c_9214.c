typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int actor);
extern int __GetFlag(int flag);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092b08(int actor, int arg1);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_946_2009214(void)
{
    s32 flag;
    register u8 *actor asm("r6");
    register s32 ret0 asm("r0");
    register u8 *base asm("r3");
    register s32 off asm("r2");
    register s32 val asm("r0");
    register s32 result asm("r0");

    ret0 = (s32)__MapActor_GetActor(8);
    base = gState;
    off = 0xe0;
    asm volatile("" : "+r"(base), "+r"(off));
    off <<= 1;
    base += off;
    asm volatile("mov r6, r0" : "=r"(actor) : "r"(ret0));
    off = 0;
    asm volatile("" : "+r"(base), "+r"(off));
    val = *(s16 *)(base + off);
    asm volatile(
        "ldr r2, =0x7e\n\t"
        "ldr r3, =0x8d2\n\t"
        "sub r3, r2\n\t"
        "add r0, r3\n\t"
        : "+r"(val) :: "r2", "r3");
    result = val;
    flag = __GetFlag(result);

    if (flag != 0) {
        {
            register s32 y asm("r2");
            register s32 x asm("r1");

            y = 0xa8;
            asm volatile("" : "+r"(y));
            y <<= 16;
            asm volatile("ldr r1, =0x28a0000" : "=r"(x) : "r"(y));
            __MapActor_SetPos(8, x, y);
        }
        {
            register u32 c asm("r3");
            register s32 a0 asm("r0");

            asm volatile("ldr r3, =0xffe00000" : "=r"(c));
            a0 = 8;
            asm volatile("" : "+r"(c), "+r"(a0));
            *(u32 *)(actor + 0xc) = c;
            __Actor_SetSpriteFlags(__MapActor_GetActor(a0), 0);
        }
        __Func_8092b08(8, 3);
        actor[0x55] = 0;
        asm volatile("" ::: "memory");
        {
            register u8 *p asm("r1");
            register s32 v asm("r2");
            register s32 w asm("r3");

            p = actor + 0x23;
            asm volatile("" : "+r"(p));
            v = *p;
            asm volatile("" : "+r"(p), "+r"(v));
            w = 2;
            asm volatile("" : "+r"(w), "+r"(v));
            w |= v;
            asm volatile("" : "+r"(w), "+r"(p));
            *p = w;
        }
        {
            register int arg4 asm("r3");
            register int arg5 asm("r2");

            arg5 = 0xa;
            arg4 = 0x28;
            asm volatile("" : "+r"(arg4), "+r"(arg5));
            __Func_8010704(0x2a, 0xa, 1, 1, arg4, arg5);
        }
    } else {
        __MapActor_GetActor(8)[0x55] = flag;
    }
}

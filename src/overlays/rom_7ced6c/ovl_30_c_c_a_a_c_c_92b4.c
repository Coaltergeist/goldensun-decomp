typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int actor);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092b08(int actor, int arg1);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4,
                            int arg5);
extern void OvlFunc_946_2008e00(int actor);

void OvlFunc_946_20092b4(void)
{
    register u8 *actor asm("r5");
    register s32 room asm("r8");
    register u8 *addr asm("r9");
    register s32 flagBase asm("r10");
    register s32 flag asm("r7");
    register u8 *actor55 asm("r6");
    register s32 idx asm("r0");

    actor = __MapActor_GetActor(8);
    room = *(s32 *)(actor + 8) >> 20;
    if (room == 0x28) {
        {
            register u8 *base asm("r3");
            register s32 off asm("r2");

            base = gState;
            off = 0xe0;
            asm volatile("" : "+r"(base), "+r"(off));
            off <<= 1;
            off += (s32)base;
            idx = *(s16 *)off;
            addr = (u8 *)off;
        }
        asm volatile(
            "ldr r3, =0x7e\n\t"
            "ldr r2, =0x8d2\n\t"
            "sub r2, r3\n\t"
            "mov %0, r2\n\t"
            : "=r"(flagBase) :: "r2", "r3");
        idx += flagBase;
        flag = __GetFlag(idx);
        if (flag == 0) {
            asm volatile("" : "+r"(flag));
            actor55 = actor + 0x55;
            *actor55 = 3;
            __CutsceneWait(8);
            OvlFunc_946_2008e00(8);
            __PlaySound(0x88);
            __CutsceneWait(0x28);
            __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
            __Func_8092b08(8, 3);
            *actor55 = flag;
            {
                register u8 *p asm("r1");
                register s32 v asm("r2");
                register s32 w asm("r3");

                p = actor + 0x23;
                v = *p;
                w = 2;
                w |= v;
                *p = w;
            }
            {
                register s32 arg4 asm("r2");
                register s32 arg5 asm("r3");

                arg4 = room;
                arg5 = 0xa;
                asm volatile("" : "+r"(arg4), "+r"(arg5));
                __Func_8010704(0x2a, 0xa, 1, 1, arg4, arg5);
            }
            {
                register u8 *p asm("r2");
                p = addr;
                idx = *(s16 *)p;
            }
            idx += flagBase;
            __SetFlag(idx);
        }
    }
}

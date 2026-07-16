typedef unsigned char u8;
typedef int s32;

extern void OvlFunc_910_20085dc(void);
extern void OvlFunc_910_2008974(int actor_id);
extern void __ClearFlag(int flag);
extern s32 __GetFlag(s32 flag);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __Func_8092a1c(int actor, int arg1, void *commands);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern u8 gScript_910__02008bf4[];

void OvlFunc_910_200850c(void)
{
    if (__GetFlag(0x109) != 0) {
        __ClearFlag(0x200);
    }
    if (__GetFlag(0xfd2) == 0) {
        OvlFunc_910_2008974(0xd);
    }
    if (__GetFlag(0x84a) != 0) {
        {
            register int x asm("r1") = 0x9a;
            register int actor asm("r0") = 0xb;
            register int y asm("r2");
            asm volatile("" : "+r"(x), "+r"(actor));
            x <<= 17;
            asm volatile("" : "+r"(x), "+r"(actor));
            y = 0x1070000;
            asm volatile("" : "+r"(x), "+r"(actor), "+r"(y));
            __MapActor_SetPos(actor, x, y);
        }
        {
            register int x asm("r1") = 0xad;
            register int actor asm("r0") = 0xc;
            register int y asm("r2");
            asm volatile("" : "+r"(x), "+r"(actor));
            x <<= 17;
            asm volatile("" : "+r"(x), "+r"(actor));
            y = 0x1070000;
            asm volatile("" : "+r"(x), "+r"(actor), "+r"(y));
            __MapActor_SetPos(actor, x, y);
        }
        if (__GetFlag(0x84f) == 0 && __GetFlag(0x845) == 0) {
            __MapActor_SetPos(0xb, 0, 0);
            {
                register int y asm("r1") = 0x80;
                register void *script asm("r2") = gScript_910__02008bf4;
                register int actor asm("r0") = 0xc;
                asm volatile("" : "+r"(y), "+r"(script), "+r"(actor));
                y <<= 9;
                asm volatile("" : "+r"(y), "+r"(script), "+r"(actor));
                __Func_8092a1c(actor, y, script);
            }
        }
    }
    if (__GetFlag(0x845) != 0) {
        {
            register int x asm("r1") = 0xe0;
            register int y asm("r2") = 0x92;
            register int actor asm("r0") = 0xa;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
            x <<= 16;
            y <<= 17;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
            __MapActor_SetPos(actor, x, y);
        }
        {
            register int val asm("r1") = 0x80;
            register int actor asm("r0") = 0xa;
            register int dur asm("r2");
            asm volatile("" : "+r"(val), "+r"(actor));
            val <<= 7;
            asm volatile("" : "+r"(val), "+r"(actor));
            dur = 0;
            asm volatile("" : "+r"(val), "+r"(actor), "+r"(dur));
            __Func_8092adc(actor, val, dur);
        }
        __Func_8092adc(8, 0, 0);
        if (__GetFlag(0x85e) == 0) {
            OvlFunc_910_20085dc();
        }
    }
}

typedef unsigned char u8;
typedef signed int s32;
extern s32 __GetFlag(s32);
extern void __SetFlag(s32);
extern s32 __GetFlag_NoArgs(void) asm("__GetFlag");
extern void __SetFlag_NoArgs(void) asm("__SetFlag");
extern void __CutsceneStart(void);
extern void __Func_80933d4(s32, s32);
extern void __Func_8093500(s32, s32);
extern void __Func_8093530(void);
extern void __Func_8092adc(s32, s32, s32);
extern void __MapActor_Surprise(s32, s32);
extern void __Func_80925cc(s32, s32);
extern void __CutsceneWait(s32);
extern void __MapActor_SetSpeed(s32, s32, s32);
extern void __PlaySound(s32);
extern u8 *__MapActor_GetActor(s32);
extern void __Func_80921c4(s32, s32, s32);
extern void __CutsceneEnd(void);

void OvlFunc_948_2008ad0(void)
{
    register s32 flag asm("r0");
    asm volatile("ldr %0, =0x9c8" : "=r" (flag));
    flag = __GetFlag_NoArgs();
    if (flag == 0) {
        asm volatile("ldr %0, =0x9c8" : "=r" (flag));
        __SetFlag_NoArgs();
        __CutsceneStart();
        {
            register s32 first asm("r0") = 0x80;
            register s32 second asm("r1") = 0x80;
            asm volatile("" : "+r" (first), "+r" (second));
            first <<= 10;
            second <<= 7;
            __Func_80933d4(first, second);
        }
        __Func_8093500(0xf, 1);
        __Func_8093530();
        {
            register s32 frames asm("r2") = 0x14;
            register s32 actor asm("r0");
            register s32 zero asm("r1");
            asm volatile("" : "+r" (frames));
            actor = 0xf;
            asm volatile("" : "+r" (actor), "+r" (frames));
            zero = 0;
            __Func_8092adc(actor, zero, frames);
        }
        {
            register s32 value asm("r1") = 0x81;
            register s32 actor asm("r0");
            asm volatile("" : "+r" (value));
            actor = 0xf;
            asm volatile("" : "+r" (actor), "+r" (value));
            value <<= 1;
            __MapActor_Surprise(actor, value);
        }
        __Func_80925cc(0xf, 2);
        __CutsceneWait(0x14);
        __MapActor_SetSpeed(0xf, 0x10000, 0x8000);
        __PlaySound(0x98);
        {
            register u8 *actorObject asm("r0") = __MapActor_GetActor(0xf);
            register s32 position asm("r3") = 0x80;
            position <<= 12;
            asm volatile("" : "+r" (position));
            {
            register s32 xValue asm("r1") = 0x92;
            register s32 yValue asm("r2") = 0xaa;
            register s32 actor asm("r0");
            asm volatile("" : "+r" (xValue), "+r" (yValue));
            *(s32 *)(actorObject + 0x28) = position;
            xValue <<= 2;
            actor = 0xf;
            asm volatile("" : "+r" (actor), "+r" (xValue), "+r" (yValue));
            yValue <<= 2;
            __Func_80921c4(actor, xValue, yValue);
            }
        }
        {
            register s32 value asm("r1") = 0x80;
            register s32 actor asm("r0");
            register s32 frames asm("r2");
            asm volatile("" : "+r" (value));
            actor = 0xf;
            asm volatile("" : "+r" (actor), "+r" (value));
            value <<= 7;
            frames = 0x14;
            __Func_8092adc(actor, value, frames);
        }
        __CutsceneEnd();
    }
}

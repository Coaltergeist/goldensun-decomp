typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern int gOvl_020098ec;
extern u8 gState[];

extern void __Func_8092adc(int actor, int value, int duration);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_809259c(int actor, int value);
extern void __MapActor_Jump(int actor, int value, int duration);
extern void __MapActor_SetAnim(int actor, int animation);

void OvlFunc_905_20090c8(void)
{
    u8 *context = iwram_3001ebc;
    int timer = ++gOvl_020098ec;

    switch (timer) {
    case 0x3c:
        {
            register int actor asm("r0");
            register int value asm("r1");
            register int duration asm("r2");
            asm volatile(
                "mov r1, #0x80\n\t"
                "mov r0, #0xd\n\t"
                "lsl r1, #6\n\t"
                "mov r2, #0"
                : "=r" (actor), "=r" (value), "=r" (duration));
            __Func_8092adc(actor, value, duration);
        }
        __MapActor_Emote(0xd, 2, 0);
        break;
    case 0xb4:
        __Func_809259c(0xd, 3);
        break;
    case 0xf0:
    case 0x10e:
        __MapActor_Jump(0xd, 4, 0);
        break;
    case 0x1e0:
        __MapActor_SetAnim(0xd, 4);
        break;
    }

    {
        register int stateValue asm("r3");
        asm volatile(
            "ldr r3, =gState\n\t"
            "mov r2, #0x8d\n\t"
            "lsl r2, #2\n\t"
            "add r3, r2\n\t"
            "mov r2, #0\n\t"
            "ldrsh r3, [r3, r2]"
            : "=r" (stateValue)
            :
            : "r2");
        if (stateValue == 0) {
            register s16 value asm("r3");
            register s16 *destination asm("r2") = (s16 *)(context + 0x182);
            asm volatile("mov r3, #0x63" : "=r" (value) : "r" (destination));
            *destination = value;
        }
    }
}

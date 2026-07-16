typedef unsigned char u8;
typedef unsigned int u32;
typedef short s16;
typedef int s32;

void __ClearFlag();
void __Func_8091eb0();
void *__MapActor_GetActor();
void __MapActor_SetIdle();
void __MapActor_SetPos();
void __SetFlag();
void __SetFlagByte();
extern u8 gState[];
extern void *iwram_3001ebc;

void OvlFunc_960_2008b24(s32 unused, s32 actor)
{
    register s32 actor_reg asm("r6") = actor;
    register u8 *state asm("r5");
    register s32 value asm("r2");
    register s32 expected asm("r3");
    register u8 *object asm("r0");

    if (*(s16 *)((u8 *)iwram_3001ebc + 0x182) == 0x63) {
        register s32 zero asm("r3") = 0;
        *(s16 *)((u8 *)iwram_3001ebc + 0x182) = zero;
    }

    __ClearFlag(0x20F);

    asm volatile(
        "ldr r3, =gState\n\t"
        "mov r2, #0xe0\n\t"
        "lsl r2, #1\n\t"
        "add r3, r2\n\t"
        "mov r1, #0\n\t"
        "ldrsh r2, [r3, r1]\n\t"
        "ldr r3, =0xa4"
        : "=r"(value), "=r"(expected)
        :
        : "r1");
    if (value == expected) {
        register s32 flag asm("r0");
        asm volatile(
            "ldr r2, =0x2f9\n\t"
            "add r0, %1, r2"
            : "=r"(flag)
            : "r"(actor_reg)
            : "r2");
        __SetFlag(flag);
    } else {
        asm volatile("ldr r3, =0xa5" : "=r"(expected));
        if (value == expected) {
            register s32 flag asm("r0");
            asm volatile(
                "ldr r3, =0x309\n\t"
                "add r0, %1, r3"
                : "=r"(flag)
                : "r"(actor_reg)
                : "r3");
            __SetFlag(flag);
        }
    }

    __SetFlagByte(0x210, 0);
    __Func_8091eb0(0x62, 5);

    asm volatile(
        "ldr r1, =gState\n\t"
        "ldr r3, =0x22b\n\t"
        "add r2, r1, r3\n\t"
        "mov r3, #3\n\t"
        "strb r3, [r2]\n\t"
        "mov %0, r1"
        : "=r"(state)
        :
        : "r1", "r2", "r3", "memory");

    asm volatile(
        "mov r1, #0xe0\n\t"
        "lsl r1, #1\n\t"
        "add r3, %2, r1\n\t"
        "mov r1, #0\n\t"
        "ldrsh r2, [r3, r1]\n\t"
        "ldr r3, =0xa5"
        : "=r"(value), "=r"(expected)
        : "r"(state)
        : "r1");
    if (value == expected) {
        if (actor_reg == 0xB) {
            __Func_8091eb0(0x62, 7);
        } else if (actor_reg == 0xC) {
            __Func_8091eb0(0x62, 6);
            __MapActor_SetIdle(0xC);
            __MapActor_SetPos(0xC, 0, 0);
        }
    }

    asm volatile(
        "mov r2, #0xfa\n\t"
        "lsl r2, #1\n\t"
        "add r3, %1, r2\n\t"
        "ldr %0, [r3]"
        : "=r"(object)
        : "r"(state)
        : "r2", "r3");
    object = __MapActor_GetActor((s32)object);
    object[0x55] = 3;
}

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80925cc(int actor_id, int mode);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor_id, int message);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __MapActor_SetBehavior(int actor_id, const void *script);
extern void __MapActor_WaitScript(int actor_id);
extern u8 *__MapActor_GetActor(int actor_id);

void OvlFunc_899_20085bc(void) {
    asm volatile(
        "mov r0, #0x18\n\t"
        "bl __MapActor_GetActor\n\t"
        "mov r5, r0\n\t"
        "bl __CutsceneStart\n\t"
        "mov r1, #2\n\t"
        "mov r0, #0x18\n\t"
        "bl __Func_80925cc\n\t"
        "ldr r0, 20f\n\t"
        "bl __MessageID\n\t"
        "mov r0, #0x18\n\t"
        "mov r1, #0\n\t"
        "bl __ActorMessage\n\t"
        "mov r1, #0x80\n\t"
        "mov r2, #0x80\n\t"
        "lsl r1, r1, #11\n\t"
        "lsl r2, r2, #10\n\t"
        "mov r0, #0x18\n\t"
        "bl __MapActor_SetSpeed\n\t"
        "ldrh r2, [r5, #6]\n\t"
        "mov r3, #0xf0\n\t"
        "lsl r3, r3, #8\n\t"
        "ldr r1, 21f\n\t"
        "and r3, r3, r2\n\t"
        "mov r2, #0xc0\n\t"
        "add r3, r3, r1\n\t"
        "lsl r2, r2, #7\n\t"
        "cmp r3, r2\n\t"
        "bhi 1f\n\t"
        "add r5, r5, #0x64\n\t"
        "mov r1, #0\n\t"
        "ldrsh r3, [r5, r1]\n\t"
        "cmp r3, #2\n\t"
        "bgt 3f\n\t"
        "ldr r2, 22f\n\t"
        "lsl r3, r3, #2\n\t"
        "ldr r1, [r2, r3]\n\t"
        "mov r0, #0x18\n\t"
        "bl __MapActor_SetBehavior\n\t"
        "ldrh r3, [r5, #0]\n\t"
        "add r3, r3, #1\n\t"
        "b 4f\n\t"
        "1:\n\t"
        "add r5, r5, #0x64\n\t"
        "mov r2, #0\n\t"
        "ldrsh r3, [r5, r2]\n\t"
        "cmp r3, #2\n\t"
        "ble 3f\n\t"
        "ldr r2, 22f\n\t"
        "lsl r3, r3, #2\n\t"
        "ldr r1, [r2, r3]\n\t"
        "mov r0, #0x18\n\t"
        "bl __MapActor_SetBehavior\n\t"
        "ldrh r3, [r5, #0]\n\t"
        "add r3, r3, #1\n\t"
        "b 4f\n\t"
        ".align 2, 0\n\t"
        "20: .word 0x12ac\n\t"
        "21: .word 0xffffb000\n\t"
        "22: .word .L64a8\n\t"
        "3:\n\t"
        "ldr r2, 23f\n\t"
        "lsl r3, r3, #2\n\t"
        "ldr r1, [r2, r3]\n\t"
        "mov r0, #0x18\n\t"
        "bl __MapActor_SetBehavior\n\t"
        "ldrh r3, [r5, #0]\n\t"
        "sub r3, r3, #1\n\t"
        "4:\n\t"
        "strh r3, [r5, #0]\n\t"
        "mov r1, #0\n\t"
        "ldrsh r3, [r5, r1]\n\t"
        "ldrh r2, [r5, #0]\n\t"
        "cmp r3, #5\n\t"
        "ble 5f\n\t"
        "mov r3, #0\n\t"
        "strh r3, [r5, #0]\n\t"
        "ldr r2, 24f\n\t"
        "5:\n\t"
        "lsl r3, r2, #16\n\t"
        "cmp r3, #0\n\t"
        "bge 6f\n\t"
        "mov r3, #5\n\t"
        "strh r3, [r5, #0]\n\t"
        "b 6f\n\t"
        ".align 2, 0\n\t"
        "24: .word 0\n\t"
        "23: .word .L64c0\n\t"
        "6:\n\t"
        "mov r0, #0x18\n\t"
        "bl __MapActor_WaitScript\n\t"
        "bl __CutsceneEnd\n\t"
        :
        :
        : "r0", "r1", "r2", "r3", "r5", "cc", "memory");
}

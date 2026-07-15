typedef unsigned char u8;
typedef unsigned short u16;

extern void _PlaySound(int sound);
extern u8 *GetFieldActor(int actorId);
extern void *_CreateActor(int actorId, int x, int y, int z);
extern void _Actor_SetScript(void *actor, void *script);
extern void _Actor_SetAnim(void *actor, int animation);
extern void CutsceneWait(int frames);
extern int Update_EmoteBubble(u8 *actor);

void MapActor_Emote(int actor, int emote, int duration)
{
    u8 *fieldActor;
    u8 *bubble;

    if ((emote & 0xff) == 6) {
        _PlaySound(0x6e);
    }

    fieldActor = GetFieldActor(actor);
    if (fieldActor != 0) {
        bubble = (u8 *)_CreateActor(0x15, *(int *)(fieldActor + 8),
                                     *(int *)(fieldActor + 0xc),
                                     *(int *)(fieldActor + 0x10));
        if (bubble != 0) {
            {
                register u8 *a0 asm("r0") = bubble;
                asm volatile(
                    "ldr r1, 1f\n\t"
                    "bl _Actor_SetScript"
                    :
                    : "r"(a0)
                    : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
            }
            _Actor_SetAnim(bubble, emote & 0xf);
            asm volatile(
                "mov r3, %0\n\t"
                "mov r2, #0\n\t"
                "add r3, #0x55\n\t"
                "strb r2, [r3]\n\t"
                "add r3, #0xf\n\t"
                "strh r2, [r3]\n\t"
                "add r3, #2\n\t"
                "mov r2, %3\n\t"
                "strh r2, [r3]\n\t"
                "ldr r3, 9f\n\t"
                "ldr r0, [%0, #0x50]\n\t"
                "ldr r1, 8f\n\t"
                "str r3, [%0, #0x6c]\n\t"
                "mov r3, r0\n\t"
                "add r3, #0x26\n\t"
                "strb r1, [r3]\n\t"
                "mov r3, #0x80\n\t"
                "lsl r3, #1\n\t"
                "and r3, %2\n\t"
                "str %1, [%0, #0x68]\n\t"
                "cmp r3, #0\n\t"
                "beq 2f\n\t"
                "ldrb r3, [r0, #9]\n\t"
                "mov r2, #0xd\n\t"
                "neg r2, r2\n\t"
                "and r2, r3\n\t"
                "mov r3, #4\n\t"
                "orr r2, r3\n\t"
                "strb r2, [r0, #9]\n\t"
                "b 3f\n\t"
                ".align 2, 0\n\t"
                "8: .word 0\n\t"
                "1: .word .L9fc2c\n\t"
                "9: .word Update_EmoteBubble\n\t"
                "2:\n\t"
                "ldr r3, [%1, #0x50]\n\t"
                "ldrb r3, [r3, #9]\n\t"
                "mov r2, #0xc\n\t"
                "and r2, r3\n\t"
                "ldrb r1, [r0, #9]\n\t"
                "mov r3, #0xd\n\t"
                "neg r3, r3\n\t"
                "and r3, r1\n\t"
                "orr r3, r2\n\t"
                "strb r3, [r0, #9]\n\t"
                "3:\n\t"
                :
                : "r"(bubble), "r"(fieldActor), "r"(emote), "r"(actor)
                : "r0", "r1", "r2", "r3", "cc", "memory");
        }
        CutsceneWait(duration);
    }
}

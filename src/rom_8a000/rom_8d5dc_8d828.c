typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void *FindMapActorEvent(int type, int actor);
extern void CutsceneStart(void);
extern void MessageID(int message);
extern void ActorMessage(int actor, int message);
extern void CutsceneEnd(void);
extern void _PlaySound(int sound);
extern void Player_EnterStairsUp(void);
extern void Player_EnterStairsDown(void);
typedef struct {
    u8 pad[0x170];
    u16 stairsField;
} StairsState;

extern u8 *iwram_3001ebc;

int Func_808d828(int actor0)
{
    register int actor asm("r6");
    register void *event asm("r5");
    register int result asm("r7");
    register u8 *state asm("r8");
    int field;

    actor = actor0;
    event = FindMapActorEvent(2, actor);
    result = -1;
    state = iwram_3001ebc;

    if (event != 0 && (field = *(int *)((u8 *)event + 8)) != 0) {
        if (*(int *)event & 0x200) {
            register int f asm("r1") = field;
            asm volatile(
                "sub r2, #0x64\n\t"
                "add r2, r8\n\t"
                "mov r3, #0\n\t"
                "strh r3, [r2]\n\t"
                "ldr r1, [r5, #8]\n\t"
                : "+r"(f)
                : "r"(event), "r"(state)
                : "r2", "r3", "memory");
            field = f;
        }

        if (field < 0x10000) {
            CutsceneStart();
            MessageID(*(int *)((u8 *)event + 8));
            ActorMessage(result, 0);
            result = 0;
            CutsceneEnd();
        } else {
            ((void (*)(int))field)(actor);
            result = 0;
        }
    } else {
        event = FindMapActorEvent(1, actor);
        if (event != 0) {
            int flags = *(int *)event & 0x30;

            switch (flags) {
            case 0:
                _PlaySound(0x7b);
                break;
            case 0x20:
                _PlaySound(0x80);
                Player_EnterStairsUp();
                break;
            case 0x30:
                _PlaySound(0x81);
                Player_EnterStairsDown();
                break;
            }
            ((StairsState *)state)->stairsField = *(int *)((u8 *)event + 8);
            result = 0;
        }
    }

    return result;
}

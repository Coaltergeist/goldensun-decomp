typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

struct WorkState {
    u8 padding[0x16c];
    s16 sceneIndex;
};

typedef struct {
    void *script;
    u16 x;
    u16 z;
} TableEntry;

extern struct WorkState *iwram_3001ebc;
extern TableEntry Table_250c[] asm(".L250c");
extern int __CutsceneStart(void);
extern u8 *__MapActor_GetActor(int actor);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern void __MapActor_SetSpeed(int actor, int x, int z);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8092208(int actor, int mode, int offset);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int arg);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern int __CutsceneEnd(void);

void OvlFunc_939_2008b6c(void)
{
    struct WorkState *state = iwram_3001ebc;
    unsigned int i;
    u8 *actor;
    int index;
    int x;
    int z;
    void *script;

    __CutsceneStart();

    for (i = 8; i <= 0x41; i++) {
        actor = __MapActor_GetActor(i);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }

    __PlaySound(0x9e);

    index = state->sceneIndex - 4;
    asm volatile("" : "+r"(index));
    x = Table_250c[index].x;
    z = Table_250c[index].z;
    script = Table_250c[index].script;
    __Func_8010560(script, x, z);

    asm volatile(
        "mov r1, #0x80\n\t"
        "mov r2, #0x80\n\t"
        "lsl r1, #8\n\t"
        "mov r0, #0\n\t"
        "lsl r2, #7\n\t"
        "bl __MapActor_SetSpeed\n\t"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    __MapActor_GetActor(0)[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    if (index != 6) {
        asm volatile(
            "mov r2, #8\n\t"
            "mov r0, #0\n\t"
            "mov r1, #2\n\t"
            "neg r2, r2\n\t"
            "bl __Func_8092208\n\t"
            :
            :
            : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
        __CutsceneWait(10);
    }
    __Func_8091e9c(state->sceneIndex);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}

typedef unsigned char u8;
typedef signed char s8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;

typedef struct {
    u8 pad0[0x34];
    s8 unk34;
} ActorState;

typedef struct {
    u8 pad0[0xcb8];
    s16 unkCB8;
    s16 unkCBA;
} FieldState;

typedef struct {
    u8 pad0[0x53c];
    u8 unk53C;
    u8 unk53D;
    u8 unk53E;
} MenuState;

typedef struct {
    u8 pad0[0x1f4];
    int actorId;
} GameState;

extern void _PlaySound(int sound);
extern void StopTask(void *task);
extern void Func_80982dc(void);
extern void Func_8098294(int a);
extern void Func_8091200(u32 value, u32 mode);
extern void Func_8091254(int value);
extern void Func_8091220(u32 a, u32 b);
extern void WaitFrames(int frames);
extern unsigned int Func_808e4b4(unsigned int, unsigned int, unsigned int *);
extern int Func_8096b28(void *, int, int);
extern ActorState *iwram_3001f30;
extern GameState gState;

void Func_80984c0(void)
{
    u8 *base = (u8 *)&iwram_3001f30;
    u8 *base2 = base;
    ActorState *self = *(ActorState **)base;
    FieldState *fieldState;
    MenuState *menuState;

    base -= 0x74;
    base2 -= 0x64;
    fieldState = *(FieldState **)base;
    menuState = *(MenuState **)base2;

    if (fieldState->unkCB8 != 0) {
        unsigned int local;
        unsigned int result;

        _PlaySound(0xa7);
        StopTask(Func_80982dc);
        fieldState->unkCB8 = 0;
        fieldState->unkCBA = 0;
        Func_8098294(0);
        Func_8091200(0x10000, 1);
        Func_8091254(1);
        Func_8091220(0, 0);
        Func_8091200(0x10000, 0);
        Func_8091254(0x1e);
        WaitFrames(1);
        result = Func_808e4b4(0x40000005, 8, &local);
        if (result != 0) {
            Func_8096b28((void *)result, gState.actorId, local);
        }
        if (self->unk34 == 0) {
            menuState->unk53E = 0;
            menuState->unk53C = 1;
            menuState->unk53D = 1;
            WaitFrames(0xa);
        }
    }
}

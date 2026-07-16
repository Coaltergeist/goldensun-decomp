typedef unsigned char u8;
typedef signed char s8;
typedef signed short s16;

extern u8 *iwram_3001f30;
extern void _Actor_SetAnim(u8 *, int);
extern void _PlaySound(int);
extern void Func_8096f14(u8 *);
extern void Func_8096f50(u8 *);
extern void Func_8096cdc(u8 *, int, int);
extern void _Func_8019908(int, int);
extern void _Func_801776c(int, int);
extern int _GetFlag(int);
extern void Func_8097174(void);

void Func_809728c(void)
{
    u8 *state;
    u8 *actor;
    u8 *otherState;
    s16 value;

    state = iwram_3001f30;
    actor = *(u8 **)(state + 0x10);
    otherState = *(u8 **)((u8 *)&iwram_3001f30 - 0x74);
    value = *(s16 *)(state + 0x1c);

    _Actor_SetAnim(actor, 0x14);
    *(int *)(actor + 0x38) = *(int *)(actor + 8);
    *(int *)(actor + 0x3c) = *(int *)(actor + 0xc);
    *(int *)(actor + 0x40) = *(int *)(actor + 0x10);
    *(int *)(actor + 0x24) = 0;
    *(int *)(actor + 0x28) = 0;
    *(int *)(actor + 0x2c) = 0;

    if (*(s8 *)(state + 0x22) != 0) {
        _PlaySound(0xd4);
        *(void (**)(u8 *))(actor + 0x6c) = Func_8096f14;
    }

    if (*(s8 *)(state + 0x23) != 0) {
        Func_8096cdc(actor, 1, 0);
        _Func_8019908(value, 4);
        if (*(s8 *)(state + 0x21) != 0) {
            _Func_801776c(0x926, *(s8 *)(state + 0x71c));
        } else {
            _Func_801776c(0x926, *(s8 *)(state + 0x71c));
        }
        Func_8096cdc(actor, 0, 0x10);
    }

    if (_GetFlag(0x140) != 0) {
        if (*(s8 *)(state + 0x22) != 0)
            *(void (**)(u8 *))(actor + 0x6c) = Func_8096f50;
        _Actor_SetAnim(actor, 0x15);
    } else {
        Func_8097174();
    }

    otherState[0xcc7] = 1;
}

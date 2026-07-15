typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001ebc;
extern u32 gKeyPress;
extern s16 *Func_808d394(void *);
extern void WaitFrames(int);
extern int _Func_8017364(void);
extern int _YesNoMenu(int, int, int, int);
extern void MapActor_SetAnim(void *, int);
extern void _Func_8019e48(int);
extern void _Func_8019a54(void);
extern void MapActor_WaitAnim(void *, int);

int Func_8091c7c(void *actor, int forceChoice)
{
    u8 *state = iwram_3001ebc;
    int text = *Func_808d394(*(void **)(state + 0x1f4));
    u8 *first = *(u8 **)(state + 0x1f8);
    u8 *second = *(u8 **)(state + 0x1fc);
    int enabled = 1;
    int result;

    while (gKeyPress != 0)
        WaitFrames(1);
    while (_Func_8017364() == 0)
        WaitFrames(1);
    WaitFrames(3);

    if (forceChoice == 0) {
        int maximum = *(u16 *)(first + 0xe) + *(u16 *)(first + 0xa);
        if (second != 0) {
            int other = *(u16 *)(second + 0xe) + *(u16 *)(second + 0xa);
            if (maximum < other)
                maximum = other;
        }
        if (maximum > 0xf)
            enabled = 0;
    }

    result = _YesNoMenu(enabled, *(s16 *)(state + 0xcc2),
                        *(s16 *)(state + 0xcc4), 0);
    if (result != 0) {
        MapActor_SetAnim(actor, 4);
        _Func_8019e48(text);
        _Func_8019a54();
        MapActor_WaitAnim(actor, 4);
    } else {
        MapActor_SetAnim(actor, 3);
        _Func_8019e48(text);
        _Func_8019a54();
        MapActor_WaitAnim(actor, 3);
    }
    return result;
}

typedef signed short s16;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern int _Func_80796c4(s16 *units);
extern void _AddCoins(int amount);
extern u8 *_GetUnit(int unit);
extern void _UpdateStatBarPercent(int unit);
extern u8 *iwram_3001ebc;
extern void WaitFrames(int frames);
extern void _MapTransitionOut(void);
extern void _WaitMapTransition(void);
extern void _PlaySound(int sound);
extern void Func_80b04c4(void);
extern void _MapTransitionIn(void);

void InnHeal(int cost)
{
    s16 units[8];
    int count;
    int i;
    u8 *unit;
    u8 *state;

    count = _Func_80796c4(units);
    _AddCoins(-cost);
    for (i = 0; i < count; i++) {
        unit = _GetUnit(units[i]);
        if (*(s16 *)(unit + 0x38) != 0) {
            *(u16 *)(unit + 0x38) = *(u16 *)(unit + 0x34);
            *(u16 *)(unit + 0x3a) = *(u16 *)(unit + 0x36);
            _UpdateStatBarPercent(units[i]);
        }
    }
    state = iwram_3001ebc;
    *(u32 *)(state + 0x1c0) = 0x209;
    *(u32 *)(state + 0x1c8) = 0x3c;
    WaitFrames(0x14);
    _MapTransitionOut();
    _WaitMapTransition();
    _PlaySound(0x56);
    Func_80b04c4();
    WaitFrames(0xa);
    _MapTransitionIn();
    _WaitMapTransition();
    WaitFrames(0x1e);
    {
        register u8 *finalState asm("r2") = iwram_3001ebc;
        register u32 value asm("r3") = 0x10;
        asm volatile("" : "+r"(finalState), "+r"(value));
        *(u32 *)(finalState + 0x1c8) = value;
    }
}

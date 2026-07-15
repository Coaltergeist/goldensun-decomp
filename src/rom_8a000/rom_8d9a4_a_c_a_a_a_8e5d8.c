typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *_GetMoveInfo(unsigned int move_id);
extern u8 gState[];
extern unsigned int GetFieldActor(unsigned int actorID);
extern unsigned int Func_808e4b4(unsigned int, unsigned int, unsigned int *);
extern void Func_8096fb0(unsigned int, unsigned int);
extern void Func_80970f8(unsigned int, unsigned int);
extern int Func_8096b28(void *, int, int);
extern void Func_8096af0(void);
extern void Func_8097174(void);
extern void Func_8097194(void);

int Func_808e5d8(unsigned int eventId)
{
    unsigned int tileId = eventId & 0x3ff;
    unsigned int moveDir = (eventId >> 10) & 0xf;
    u8 *moveInfo = _GetMoveInfo(tileId);
    u8 *state;
    unsigned char moveType;
    unsigned int local;
    unsigned int a;
    unsigned int b;

    {
        register u8 *base asm("r6") = gState;
        register int offset asm("r3") = 0xfa;
        offset <<= 1;
        moveType = moveInfo[0xc];
        state = base + offset;
    }
    GetFieldActor(*(unsigned int *)state);
    a = Func_808e4b4(0x30000005, moveType, &local);
    b = Func_808e4b4(0x20000005, moveType, &local);
    Func_8096fb0(tileId, 0);
    Func_80970f8(*(unsigned int *)state, local);
    Func_8096b28((void *)a, moveDir, local);
    Func_8096af0();
    Func_8097174();
    Func_8096b28((void *)b, moveDir, local);
    Func_8097194();
    return 0;
}

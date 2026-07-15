typedef unsigned char u8;
typedef signed char s8;
typedef short s16;

extern u8 gState[];
extern int _GetPartySize(void);
extern u8 *_GetUnit(int id);
extern void _ModifyHP(int id, int amount);
extern void Func_8091220(int value, int mode);
extern void Func_8091254(int value);
extern void _PlaySound(int sound);

int UpdatePoison(void)
{
    register int poisonLevel asm("r7");
    register int partySize asm("r0");
    register u8 *member asm("r6");
    register int remaining asm("r5");

    poisonLevel = 0;
    partySize = _GetPartySize();
    if (poisonLevel < partySize) {
        register u8 *state asm("r3") = gState;
        register int offset asm("r2") = 0xfc;
        offset <<= 1;
        member = state + offset;
        remaining = partySize;
        do {
            u8 *unit = _GetUnit(*member);
            s8 status = *(s8 *)(unit + 0x131);
            int change;
            switch (status) {
            case 1: {
                s16 hp = *(s16 *)(unit + 0x34);
                change = -((hp + 10) / 20);
                if (change == 0)
                    change = -1;
                if (poisonLevel <= 0)
                    poisonLevel = 1;
                break;
            }
            case 2: {
                s16 hp = *(s16 *)(unit + 0x34);
                change = -((hp + 5) / 10);
                if (change == 0)
                    change = -1;
                if (poisonLevel <= 1)
                    poisonLevel = 2;
                break;
            }
            default:
                change = 0;
                break;
            }
            _ModifyHP(*member, change);
            member++;
            remaining--;
        } while (remaining != 0);
    }
    if (poisonLevel != 0) {
        Func_8091220(0x1ff, 0);
        Func_8091254(4);
        _PlaySound(0x85);
    }
    return poisonLevel;
}

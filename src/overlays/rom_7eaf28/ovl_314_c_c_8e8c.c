typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 iwram_3001e70[];
extern u8 gState[];
extern u8 Value_a4[] asm("0xa4");
extern u8 Value_a5[] asm("0xa5");
extern u16 L1a00[] asm(".L1a00");
extern int __GetFlagByte(int flag);
extern int __StartTask(void (*task)(void), int priority);
extern void __PlaySound(int sound);
extern void OvlFunc_960_2008400(void);
extern void OvlFunc_960_2008d24(void);
extern void OvlFunc_960_2008f50(void);
extern void OvlFunc_960_2009094(void);

int OvlFunc_960_2008e8c(void)
{
    u8 *base;
    u8 *field;
    u8 *gs;
    u8 *p;
    int offset;
    s16 val;

    base = (u8 *)iwram_3001e70[0];
    field = (u8 *)iwram_3001e70[0x13];
    offset = 0xe0;
    offset <<= 1;
    field = field + offset;
    *(u32 *)field = 0x201;

    if (__GetFlagByte(0x210) != 0) {
        gState[0x1f2] = 2;
        __StartTask(OvlFunc_960_2008400, 0xc80);
    }

    gs = gState;
    offset = 0xe0;
    offset <<= 1;
    p = gs + offset;
    val = *(s16 *)(p + 0);
    if (val == (int)Value_a4)
        goto do_check;
    if (val != (int)Value_a5)
        goto skip_check;
do_check:
    *L1a00 = *(volatile u16 *)0x500019e;
    OvlFunc_960_2008d24();
skip_check:
    offset = 0xe0;
    offset <<= 1;
    p = gs + offset;
    val = *(s16 *)(p + 0);
    if (val == (int)Value_a4) {
        OvlFunc_960_2008f50();
    } else if (val == (int)Value_a5) {
        OvlFunc_960_2009094();
    } else {
        __PlaySound(0x120);
    }

    {
        u8 *state2 = gState;
        int off2 = 0xe1;
        off2 <<= 1;
        state2 = state2 + off2;
        if (*(s16 *)(state2 + 0) == 0) {
            *(u16 *)(base + 0x14) &= 0xfdff;
        }
    }

    return 0;
}

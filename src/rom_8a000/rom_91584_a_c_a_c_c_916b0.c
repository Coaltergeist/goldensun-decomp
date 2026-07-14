typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern void _Func_801c428(void);
extern void Func_8091660(void);
extern void Func_808e118(void);
extern void Task_Cutscene(void);
extern int StartTask(void (*task)(void), int priority);
extern void _ClearFlag(int flag);

void CutsceneStart(void)
{
    register u8 *base asm("r6") = iwram_3001ebc;
    register int zero asm("r5");

    _Func_801c428();
    Func_8091660();

    {
        register int offset asm("r2") = 0xcb6;
        register u8 *cursor asm("r3") = base + offset;
        asm volatile("" : "+r"(cursor), "+r"(offset));
        offset = 0;
        asm volatile("" : "+r"(cursor), "+r"(offset));
        if (*(s16 *)(cursor + offset) != 0)
            Func_808e118();
    }

    {
        register int offset asm("r2") = 0xcc2;
        register u8 *cursor asm("r3");

        zero = 0;
        cursor = base + offset;
        offset += 2;
        *(u16 *)cursor = zero;
        cursor = base + offset;
        *(u16 *)cursor = zero;
    }

    {
        register int offset asm("r3") = 0xe4;
        register u8 *cursor asm("r2");
        offset <<= 1;
        cursor = base + offset;
        offset = 0x10;
        *(u32 *)cursor = offset;
        asm volatile("" : "+r"(cursor), "+r"(offset) :: "memory");
    }

    {
        register int offset asm("r2") = 0xe6;
        register u8 *cursor asm("r3");
        offset <<= 1;
        cursor = base + offset;
        *(u32 *)cursor = zero;
        asm volatile("" : "+r"(cursor), "+r"(offset) :: "memory");
    }

    {
        register int offset asm("r3") = 0xed;
        register u8 *cursor asm("r2");
        asm volatile("" : "+r"(offset));
        offset <<= 1;
        cursor = base + offset;
        offset = 0xffff;
        *(u16 *)cursor = offset;
    }

    {
        register int offset asm("r3") = 0xee;
        register u8 *cursor asm("r2");
        asm volatile("" : "+r"(offset));
        offset <<= 1;
        cursor = base + offset;
        offset = -1;
        *(u16 *)cursor = offset;
    }

    {
        register int offset asm("r3") = 0xef;
        register u8 *cursor asm("r2");
        asm volatile("" : "+r"(offset));
        offset <<= 1;
        cursor = base + offset;
        offset = -1;
        *(u16 *)cursor = offset;
    }

    StartTask(Task_Cutscene, 0xc8 << 4);
    _ClearFlag(0x99 << 1);

    {
        register u8 *state asm("r3") = gState;
        register int offset asm("r2") = 0xfa;
        offset <<= 1;
        *(u32 *)(base + offset) = *(u32 *)(state + offset);
        offset += 4;
        state = base + offset;
        *(u32 *)state = zero;
    }
}

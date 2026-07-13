typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e98;
extern void Func_801a7f4(void);
extern void Func_801b228(void);
extern void Func_801b010(int arg0, int arg1);
extern void Func_801a968(void);
extern int Func_801b424(int arg0);
extern void Func_801b148(void);

int Func_801c304(u16 value)
{
    register u8 **global asm("r3") = (u8 **)&iwram_3001e98;
    register unsigned int offset asm("r1") = 0x39e;
    register u8 *state asm("r3");
    register u8 *target asm("r2");
    int result;

    asm("" : "+r"(global), "+r"(offset));
    state = *global;
    target = state + offset;
    asm("" : "+r"(target));
    *(u16 *)target = value;
    {
        register unsigned int temp asm("r2") = 0xee;

        asm("" : "+r"(temp), "+r"(state));
        temp <<= 2;
        state += temp;
        temp = 1;
        asm("" : "+r"(temp), "+r"(state));
        *(u16 *)state = temp;
    }
    Func_801a7f4();
    Func_801b228();
    Func_801b010(0, 5);
    Func_801a968();
    result = Func_801b424(1);
    Func_801b148();
    return result;
}

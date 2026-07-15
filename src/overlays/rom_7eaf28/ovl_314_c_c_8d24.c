typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;

extern u8 gState[];
extern u8 Value_a5[] asm("0xa5");
extern u8 *__MapActor_GetActor(int actor);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __Func_8010704(int a0, int a1, int a2, int a3, int a4, int a5);
extern void __Func_808edac(int a0, int a1, int a2);
extern void __StopTask(void (*task)(void));
extern void OvlFunc_960_2008ce4(void);
extern u16 L1a00[] asm(".L1a00");

int OvlFunc_960_2008d24(void)
{
    u8 *state = gState;
    int offset = 0xe0;
    offset = offset << 1;
    state = state + offset;
    offset = 0;
    if (*(s16 *)(state + offset) == (int)Value_a5) {
        __MapActor_GetActor(0xe)[0x23] = 2;
        __MapActor_GetActor(0xe)[0x55] = 3;
        __MapActor_SetPos(0xe, 0, 0);
        {
            int id2 = 0xf;
            int y = 0x2c;
            __Func_8010704(0x10, y, 1, 1, id2, y);
        }
        __Func_808edac(0x64, 0, 0);
        __Func_8010704(0xc, 0x47, 1, 1, 0x7f, 0x7f);
        {
            int id3 = 0xc;
            int y2 = 0x47;
            __Func_8010704(0xb, y2, 1, 1, id3, y2);
        }
        __StopTask(OvlFunc_960_2008ce4);
        {
            register u16 *src asm("r3");
            register u16 value asm("r2");
            register volatile u16 *dst asm("r3");

            src = L1a00;
            asm volatile("" : "+r"(src));
            value = *src;
            asm volatile("" : "+r"(value));
            dst = (volatile u16 *)0x0500019e;
            asm volatile("" : "+r"(value), "+r"(dst));
            *dst = value;
        }
    }
}

typedef unsigned char u8;
typedef unsigned short u16;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int id);
extern void __Func_8012078(int, int, int, int);

void OvlFunc_956_2008658(void)
{
    register u8 *global asm("r3") = gState;
    register unsigned int offset asm("r2") = 0xfa;
    u8 *actor;

    asm volatile("" : "+r"(global), "+r"(offset));
    offset <<= 1;
    global += offset;
    asm volatile("" : "+r"(global));
    actor = __MapActor_GetActor(*(int *)global);
    {
        register int x asm("r1");
        register int y asm("r4");
        register int value asm("r5");
        register int work asm("r3");

        work = *(int *)(actor + 8);
        asm volatile("" : "+r"(work));
        x = work >> 20;
        asm volatile("" : "+r"(x));
        work = *(int *)(actor + 0x10);
        asm volatile("" : "+r"(work));
        value = 0x17;
        asm volatile("" : "+r"(value));
        y = work >> 20;
        asm volatile("" : "+r"(y));

        if (x == 0x51 && y == 0xc) {
            register unsigned int direction asm("r2") = *(u16 *)(actor + 6);
            register unsigned int mask asm("r3") = 0xe0;
            register unsigned int expected asm("r2");

            mask <<= 8;
            mask &= direction;
            expected = 0x80;
            expected <<= 7;
            asm volatile("" : "+r"(mask), "+r"(expected));
            if (mask == expected) {
                value = 0xfd;
            }
            __Func_8012078(0, x << 20, y << 20, value);
        }
    }
}

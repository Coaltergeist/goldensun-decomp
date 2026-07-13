typedef signed short s16;

typedef struct {
    char _pad000[0x16c];
    s16 eventValue;
} GameState;

extern GameState *iwram_3001ebc;
extern int __CheckPartyItem(int itemId);
extern void OvlFunc_959_2008d54(int value);
extern void __PlaySound(int soundId);
extern void __Func_8012330(int x, int y, int z);
extern void __SetFlag(int flag);

void OvlFunc_959_2008dcc(void)
{
    GameState *state = iwram_3001ebc;
    int itemSlot = __CheckPartyItem(0xea);
    int notFound = -1;

    if (itemSlot != notFound) {
        int value = state->eventValue;

        OvlFunc_959_2008d54(value - 0x28);
        __PlaySound(0x9d);
        {
            register int x asm("r0") = 0xc0;
            register int y asm("r1") = 0xc0;
            register int z asm("r2") = 0x80;

            asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
            x <<= 10;
            y <<= 10;
            z <<= 9;
            __Func_8012330(x, y, z);
        }
        {
            register int x asm("r0") = notFound;
            register int y asm("r1") = notFound;
            register int z asm("r2") = 0xe666;

            asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
            __Func_8012330(x, y, z);
        }
        __SetFlag(value + 0x32d);
    }
}

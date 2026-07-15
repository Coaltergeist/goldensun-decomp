typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001ebc;
extern void Func_801c2d0(void);
extern int Func_8028920(int selection);
extern void Func_801c2e4(void);
extern int _Func_808ce74(void);
extern int _Func_80a5b94(void);
extern int _Func_80aa56c(void);
extern int _Func_80a24d0(void);
extern int _Func_80a7478(void);

int Func_801c244(void)
{
    u8 *state = iwram_3001ebc;
    int selection = 0;
    register int returnValue asm("r0");

    for (;;) {
        int result;
        Func_801c2d0();
        selection = Func_8028920(selection);
        Func_801c2e4();

        switch (selection) {
        case 0:
            result = _Func_808ce74();
            if (result == 0)
                result = 0xff;
            *(u16 *)(state + 0x17a) = result;
            goto done;
        case 1:
            if (_Func_80a5b94() == -1)
                continue;
            goto done;
        case 2:
            if (_Func_80aa56c() != 0)
                continue;
            goto done;
        case 3:
            if (_Func_80a24d0() == -1)
                continue;
            goto done;
        case 4:
            if (_Func_80a7478() == -1)
                continue;
            goto done;
        default:
            goto done;
        }
    }
done:
    __asm__ ("" : "=r" (returnValue));
    return returnValue;
}

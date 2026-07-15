typedef unsigned char u8;

extern u8 gState[];
extern int _GetPartySize(void);
extern int _Func_8078af8(int member, int value);
extern void _Func_8019908(int value, int count);
extern void _Func_801776c(int flag, int value);

int Func_80919d8(int value)
{
    register int saved_value asm("r8") = value;
    register int sum asm("r10");
    register int zero asm("r2") = 0;
    register int count asm("r6");
    register int remaining asm("r5");
    register u8 *member asm("r7");
    int result;

    sum = zero;
    count = _GetPartySize();

    if (sum < count) {
        register int offset asm("r2") = 0xfc;
        offset <<= 1;
        member = gState + offset;
        remaining = count;
        do {
            int amount = _Func_8078af8(*member, saved_value);
            remaining--;
            member++;
            sum += amount;
        } while (remaining != 0);
    }

    if (sum >= count * 30) {
        register int flag asm("r5");
        _Func_8019908(saved_value, 2);
        asm volatile("" : : : "memory");
        flag = 0x97d;
        _Func_801776c(flag, 1);
        flag++;
        _Func_8019908(saved_value, 2);
        _Func_801776c(flag, 1);
        result = -1;
    } else {
        result = 0;
    }
    return result;
}

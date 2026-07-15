typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e74;
extern void _Func_80198dc(void);
extern void Func_80b6ae0(u16 *values);
extern void _Func_8019908(int value, int mode);
extern void _Func_80175a0(int message_id);
extern void WaitTextPrompt(void);
extern void _Func_80174d8(void);

#define SHOW_MESSAGE(id) \
    do { \
        register int message asm("r0"); \
        __asm__ ("ldr %0, =" #id : "=r" (message)); \
        _Func_80175a0(message); \
    } while (0)

void Func_80b595c(int count)
{
    u8 *state = iwram_3001e74;
    u16 values[8];
    register u16 *value asm("r6");
    register int index asm("r5");

    _Func_80198dc();
    value = values;
    Func_80b6ae0(value);
    __asm__ volatile ("" ::: "memory");
    index = 0;
    if (count != 0) {
        do {
            _Func_8019908(*value++, 1);
            if (index == count - 1)
                SHOW_MESSAGE(0x811);
            else
                SHOW_MESSAGE(0x810);
            index++;
            WaitTextPrompt();
        } while (index != count);
    }
    _Func_80174d8();
    if (state[0x45] == 1) {
        _Func_80198dc();
        _Func_8019908(0, 1);
        SHOW_MESSAGE(0x812);
        WaitTextPrompt();
    } else if (state[0x45] == 2) {
        _Func_80198dc();
        _Func_8019908(0, 1);
        SHOW_MESSAGE(0x813);
        WaitTextPrompt();
    }
}

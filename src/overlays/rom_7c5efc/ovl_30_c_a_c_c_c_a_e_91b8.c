typedef unsigned char u8;

extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_809280c(int, int, int);
extern int __Func_8092c40(int, int);
extern int __Func_8091c7c(int, int);
extern u8 OvlFunc_941_20092ac(void);
extern u8 OvlFunc_941_2009320(void);
extern u8 OvlFunc_941_200941c(void);
extern void OvlFunc_941_200934c(void);
extern u8 OvlFunc_941_2009394(void);
extern u8 OvlFunc_941_20092c4(void);
extern u8 OvlFunc_941_20092f0(void);
extern u8 OvlFunc_941_2009368(void);
extern void OvlFunc_941_2009760(void);
extern void OvlFunc_941_200931c(void);
extern void OvlFunc_941_2009448(void);

void OvlFunc_941_20091b8(void)
{
    int value;
    int repeat;

    value = 0x2547;
    __MessageID(value);
    __ActorMessage(0xc, 0);
    value++;
    __Func_809280c(1, 0, 0);
    __MessageID(value);
    __Func_8092c40(1, 0);
    __Func_809280c(2, 0, 0);
    __Func_809280c(3, 0, 0);
    __Func_809280c(0xd, 0, 0);
    __Func_809280c(0xc, 0, 0);

start:
    if (OvlFunc_941_20092ac() == 0) {
        goto alternate;
    }
main_path:
    if (OvlFunc_941_2009320() == 0) {
        goto finish_one;
    }
    repeat = 0;
    if (OvlFunc_941_200941c() == 0) {
set_repeat:
        repeat = 1;
retry:
        OvlFunc_941_200934c();
        if (__Func_8091c7c(0, 0) == 0) {
            goto finish_one;
        }
    }
    if (OvlFunc_941_2009394() != 0) {
        goto finish_two;
    }
    while (repeat != 0) {
        goto retry;
    }
    goto finish_two;

alternate:
    if (OvlFunc_941_20092c4() != 0) {
        while (OvlFunc_941_20092f0() == 0) {
            goto set_repeat;
        }
        goto finish_two;
    }
    if (OvlFunc_941_2009368() != 0) {
        goto main_path;
    }
    value = 0x254b;
    __MessageID(value);
    value++;
    __ActorMessage(2, 0);
    __MessageID(value);
    __Func_8092c40(1, 0);
    goto start;

finish_one:
    OvlFunc_941_2009760();
    return;

finish_two:
    OvlFunc_941_200931c();
    OvlFunc_941_2009448();
}

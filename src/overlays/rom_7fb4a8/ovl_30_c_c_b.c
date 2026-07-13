extern void __PlaySound(int sound_id);
extern unsigned char *__Func_8017658(int message_id, int x, int y, int style);
extern int __Func_8017364(void);
extern void __WaitFrames(int frames);
extern void __Func_801faa8(void);
extern int __CloseUIBox(unsigned char *box, int value);

#define SHOW_DIALOGUE_PAIR(first_message, second_message) \
    do { \
        unsigned char *box; \
        __PlaySound(0x55); \
        box = __Func_8017658((first_message), 5, 4, 1); \
        while (__Func_8017364() == 0) \
            __WaitFrames(1); \
        __Func_801faa8(); \
        { \
            register unsigned char *box_arg asm("r0") = box; \
            register int close_arg asm("r1"); \
            asm volatile("" : "+r"(box_arg)); \
            close_arg = 1; \
            asm volatile("" : "+r"(close_arg)); \
            __CloseUIBox(box_arg, close_arg); \
        } \
        __WaitFrames(1); \
        box = __Func_8017658((second_message), 5, 4, 1); \
        while (__Func_8017364() == 0) \
            __WaitFrames(1); \
        return __CloseUIBox(box, 1); \
    } while (0)

int OvlFunc_971_20091bc(void)
{
    SHOW_DIALOGUE_PAIR(0x292a, 0x292b);
}

int OvlFunc_971_2009228(void)
{
    SHOW_DIALOGUE_PAIR(0x292c, 0x292d);
}

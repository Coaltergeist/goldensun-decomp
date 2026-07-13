struct StateView {
    unsigned char unknown_00[0x10];
    unsigned int text_value;
};

extern struct StateView gState;
extern void _Func_801e9d4(unsigned int value, unsigned int digits, void *box,
                          int x, int y);
extern void _Func_801e7c0(unsigned int text_id, void *box, int x, int y);

void Func_80a23c0(void *box)
{
    _Func_801e9d4(gState.text_value, 7, box, 8, 0);
    _Func_801e7c0(0xb0b, box, 0x40, 0);
}

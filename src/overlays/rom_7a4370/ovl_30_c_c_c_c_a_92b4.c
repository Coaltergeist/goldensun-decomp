extern int counter asm(".L1dd4");
extern void OvlFunc_917_20098b8(int);
extern void __Func_8091254(int);

void OvlFunc_917_20092b4(void)
{
    int value = counter;

    if (value == 0) {
        OvlFunc_917_20098b8(0);
        __Func_8091254(0x14);
    } else if (value == 0x14) {
        OvlFunc_917_20098b8(1);
        __Func_8091254(8);
    }

    value = counter + 1;
    counter = value;
    if (value == 0x1e)
        counter = 0;
}

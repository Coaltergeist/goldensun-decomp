extern void Func_8003dec(unsigned char *arg0, unsigned int arg1, unsigned char arg2);

void Func_801c154(unsigned char *arg0, unsigned int arg1, unsigned char arg2)
{
    unsigned short v;

    v = *(unsigned short *)(arg0 + 6);
    v = (v & 0xfffffe00) | (arg1 & 0x1ff);
    *(unsigned short *)(arg0 + 6) = v;
    *(unsigned char *)(arg0 + 4) = arg2;
    Func_8003dec(arg0, 0xfc, arg2);
}

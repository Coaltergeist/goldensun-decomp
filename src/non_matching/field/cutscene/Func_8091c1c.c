extern int _GiveItemTo(int, int, int);

unsigned int Func_8091c1c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5;
    r5 = arg2;
    if ((int)_GiveItemTo(r5, arg0, arg2) < 0)
        return -1;
    return r5;
}

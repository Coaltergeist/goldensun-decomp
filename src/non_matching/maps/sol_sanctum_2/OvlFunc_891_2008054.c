int OvlFunc_891_2008054(void)
{
    int arg;

    if (API_GetFlag(0x818)) {
        if (API_GetFlag(0x813)) {
            return -1;
        }
        arg = 3;
    } else {
        if (API_GetFlag(0x812)) {
            return -1;
        }
        arg = 4;
    }
    API_Func_8091e9c(arg);
    return 1;
}

extern int OvlFunc_956_20086a4(int param_1, int param_2);

int OvlFunc_956_2008714(int param_1, int param_2)
{
    if (OvlFunc_956_20086a4(param_1, param_2 - 0x180000) != 0) {
        return -1;
    }
    if (OvlFunc_956_20086a4(param_1, param_2 - 0x80000) != 0) {
        return -1;
    }
    if (OvlFunc_956_20086a4(param_1, param_2 + 0x80000) != 0) {
        return -1;
    }
    if (OvlFunc_956_20086a4(param_1, param_2 + 0x180000) != 0) {
        return -1;
    }
    return 0;
}

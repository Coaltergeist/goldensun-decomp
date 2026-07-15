typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern int Func_80acab8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9);

int Func_80aca04(int type, int param_2)
{
    u8 *state = iwram_3001f2c;

    if (type == 0) {
        Func_80acab8(*(int *)(state + 0x34), 0, 0, state[0x259], 1, type, 2, param_2, 1);
        Func_80acab8(*(int *)(state + 0x24), 0, 0, state[0x258], type, 1, 2, param_2, type);
    } else {
        Func_80acab8(*(int *)(state + 0x34), 0, 0, state[0x21b], 1, 0, 2, param_2, 1);
        Func_80acab8(*(int *)(state + 0x24), 0, 0, state[0x21a], 0, 0, 1, param_2, 0);
    }

    return 1;
}

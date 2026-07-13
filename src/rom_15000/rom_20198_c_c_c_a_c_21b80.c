extern int _GetFlag(int flag);
extern void LoadPortrait(int portrait, int arg1, const void *arg2, void *arg3,
                         int arg4, int arg5);

int Func_8021b80(unsigned int portrait, int value)
{
    int result;

    if (portrait > 7)
        portrait = 0;
    if (_GetFlag(0x20)) {
        switch (portrait) {
        case 0:
            portrait = 0x38;
            break;
        case 1:
            portrait = 0x39;
            break;
        }
    }
    LoadPortrait(portrait, 0, &value, &result, 0xe, 1);
    return result;
}

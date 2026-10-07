extern int __atan2(int, int);
extern void __Actor_SetAnim(void *, int);

unsigned int OvlFunc_898_2009674(unsigned char *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    int *pos1;
    int *pos0;
    unsigned int ret = 0;

    pos1 = (int *)(arg1 + 8);
    pos0 = (int *)(arg0 + 8);
    if (OvlFunc_898_2009638(pos1, pos0) < (int)arg2 || arg3 != 0) {
        unsigned short angle = __atan2(*(int *)(arg1 + 0x10) - *(int *)(arg0 + 0x10), *pos1 - *pos0);
        int target = *(unsigned short *)(arg0 + 6) & 0xf000;

        if ((angle & 0xf000) == target ||
            ((angle + 0x1000) & 0xf000) == target ||
            ((angle - 0x1000) & 0xf000) == target ||
            arg3 != 0) {
            arg0[0x5b] = 1;
            __Actor_SetAnim(arg0, 1);
            ret = 1;
        }
    } else {
        arg0[0x5b] = 0;
        __Actor_SetAnim(arg0, 2);
    }
    return ret;
}

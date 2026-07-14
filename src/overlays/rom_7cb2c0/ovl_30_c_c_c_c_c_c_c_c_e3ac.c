extern int __GetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);

void OvlFunc_945_200e3ac(int first_base, int second_base)
{
    int first_offset = 0;
    int second_offset = 0;
    unsigned int i;

    for (i = 0; i <= 8; i++) {
        int flag = first_base + i;
        if (__GetFlag(flag) != 0) {
            __ClearFlag(flag);
            break;
        }
        first_offset++;
    }

    for (i = 0; i <= 8; i++) {
        int flag = second_base + i;
        if (__GetFlag(flag) != 0) {
            __ClearFlag(flag);
            break;
        }
        second_offset++;
    }

    __SetFlag(second_base + first_offset);
    __SetFlag(first_base + second_offset);
}

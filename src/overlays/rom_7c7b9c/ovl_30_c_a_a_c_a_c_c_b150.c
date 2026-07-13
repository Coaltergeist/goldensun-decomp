extern unsigned int __GetFlag(unsigned int flag);

unsigned int OvlFunc_943_200b150(unsigned int group)
{
    register unsigned int flag asm("r6") = 0;
    register unsigned int result asm("r7") = 0x17;
    register unsigned int i asm("r5");

    switch (group) {
    case 0:
        flag = 0x92c;
        break;
    case 1:
        flag = 0x935;
        break;
    case 2:
        flag = 0x917;
        break;
    case 3:
        flag = 0x990;
        break;
    }

    i = 0;
    do {
        if (__GetFlag(flag)) {
            return result;
        }
        i++;
        flag++;
        result++;
    } while (i <= 8);

    return 0;
}

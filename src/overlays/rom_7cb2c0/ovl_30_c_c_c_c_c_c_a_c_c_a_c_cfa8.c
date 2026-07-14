typedef unsigned int u32;

extern int GetFlag(u32) asm("__GetFlag");

int OvlFunc_945_200cfa8(int kind, int alternate)
{
    register u32 flag asm("r6") = 0;
    register int result asm("r7") = 8;
    register u32 i asm("r5");

    if (alternate == 0)
        result = 18;

    switch ((u32)kind) {
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
        if (GetFlag(flag))
            return result;
        i++;
        flag++;
        result++;
    } while (i <= 8);
    return 0;
}

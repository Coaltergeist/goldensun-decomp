extern unsigned char gState[];

void Func_801c46c(unsigned int direction)
{
    unsigned char *state = gState;
    unsigned char value = state[0x205];

    if (direction & 0x20)
        value--;
    else
        value++;
    state[0x205] = value;
}

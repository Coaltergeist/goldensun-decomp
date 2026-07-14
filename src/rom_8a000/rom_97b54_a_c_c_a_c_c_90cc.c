extern int vec3_translate();
extern void Func_8099040(void *arg0);

void Func_80990cc(unsigned char *actor)
{
    unsigned short *counter;
    int tmp;
    short count;
    unsigned int v[3];

    if (actor != 0)
    {
        counter = (unsigned short *)(actor + 0x64);
        tmp = *counter - 1;
        *counter = tmp;
        count = (short)tmp;
        if (count != 0)
        {
            v[0] = *(unsigned int *)(actor + 0x38);
            v[1] = *(unsigned int *)(actor + 0x3c);
            v[2] = *(unsigned int *)(actor + 0x40);
            vec3_translate(count << 17, *(short *)(actor + 0x66) - (count << 11), v);
            *(unsigned int *)(actor + 8) = v[0];
            *(unsigned int *)(actor + 0xc) = v[1];
            *(unsigned int *)(actor + 0x10) = v[2];
        }
        else
        {
            *(unsigned int *)(actor + 0x6c) = (unsigned int)&Func_8099040;
        }
    }
}

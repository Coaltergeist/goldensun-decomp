extern int vec3_translate();
extern void Func_8099040(void *arg0);

void Func_8099070(unsigned char *actor)
{
    short *counter;
    unsigned int v[3];

    if (actor != 0) {
        counter = (short *)(actor + 0x64);
        *counter = *counter - 1;
        if (*counter != 0) {
            v[0] = *(unsigned int *)(actor + 0x38);
            v[1] = *(unsigned int *)(actor + 0x3c);
            v[2] = *(unsigned int *)(actor + 0x40);
            vec3_translate(*counter << 17, *(short *)(actor + 0x66) + (*counter << 11), v);
            *(unsigned int *)(actor + 8) = v[0];
            *(unsigned int *)(actor + 0xc) = v[1];
            *(unsigned int *)(actor + 0x10) = v[2];
        } else {
            *(unsigned int *)(actor + 0x6c) = (unsigned int)&Func_8099040;
        }
    }
}

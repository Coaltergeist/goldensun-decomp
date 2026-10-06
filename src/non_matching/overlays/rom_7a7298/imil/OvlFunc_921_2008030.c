extern unsigned int __Random(void);

int OvlFunc_921_2008030(void *actor)
{
    short *p64 = (short *)((char *)actor + 0x64);
    int *p18 = (int *)((char *)actor + 0x18);
    int *p1c = (int *)((char *)actor + 0x1c);
    int val = *p64;

    switch (val) {
    case 2:
        *p18 += (0x80 << 5);
        *p1c += (int)0xfffff800;
        break;
    case 4:
        *p18 += (0x80 << 6);
        *p1c += (int)0xfffff000;
        break;
    case 6:
        *p18 += (int)0xffffc000;
        *p1c += (0x80 << 6);
        break;
    case 0:
        *p18 += (0x80 << 5);
        *p1c += (int)0xfffff800;
        if (*(short *)((char *)actor + 0x66) != 0) {
            *p64 = __Random() % 40 + 40;
        } else {
            *p64 = __Random() % 20 + 20;
        }
        break;
    }

    (*p64)--;
    return 1;
}

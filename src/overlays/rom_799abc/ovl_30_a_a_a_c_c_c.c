void OvlFunc_905_2008a00(unsigned char *actor)
{
    short mode = *(short *)(actor + 0x66);
    register int value __asm__("r3");
    register int delta __asm__("r2");

    switch (mode) {
    case 0:
        value = *(int *)(actor + 8);
        delta = *(int *)(actor + 0x30);
        value += delta;
        *(int *)(actor + 8) = value;
        *(int *)(actor + 0x38) = value;
        delta = *(int *)(actor + 0x34);
        value = *(int *)(actor + 0xc);
        value += delta;
        *(int *)(actor + 0xc) = value;
        *(int *)(actor + 0x3c) = value;
        break;
    case 1:
        value = *(int *)(actor + 8);
        delta = *(int *)(actor + 0x30);
        value += delta;
        *(int *)(actor + 8) = value;
        *(int *)(actor + 0x38) = value;
        goto update_z;
    case 2:
        value = *(int *)(actor + 0xc);
        delta = *(int *)(actor + 0x30);
        value += delta;
        *(int *)(actor + 0xc) = value;
        *(int *)(actor + 0x3c) = value;
update_z:
        delta = *(int *)(actor + 0x34);
        __asm__ volatile ("" : "+r" (delta));
        value = *(int *)(actor + 0x10);
        value += delta;
        *(int *)(actor + 0x10) = value;
        *(int *)(actor + 0x40) = value;
        break;
    }
}

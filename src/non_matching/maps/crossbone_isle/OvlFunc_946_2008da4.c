extern int _divsi3_RAM(int, int);
void OvlFunc_946_2008da4(void *arg0)
{
    unsigned char *p = (unsigned char *)arg0;
    unsigned char *sprite;
    int vx;
    int vz;

    vx = *(int *)(p + 0x44);
    *(int *)(p + 8) += vx;
    *(int *)(p + 0xc) += *(int *)(p + 0x48);
    vz = *(int *)(p + 0x4c);
    *(int *)(p + 0x10) += vz;
    vx -= _divsi3_RAM(vx, 18);
    *(int *)(p + 0x44) = vx;
    *(int *)(p + 0x4c) = vz - vz / 16;
    *(int *)(p + 0x18) += *(int *)(p + 0x30);
    *(int *)(p + 0x1c) += *(int *)(p + 0x34);
    sprite = *(unsigned char **)(p + 0x50);
    *(short *)(sprite + 0x1e) += *(short *)(p + 0x64);
}

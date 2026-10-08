void OvlFunc_947_20093b0(void *arg0)
{
    unsigned char *a = arg0;
    unsigned char *p;
    int vx;
    int vy;
    int vz;

    vx = *(int *)(a + 0x44);
    *(int *)(a + 0x8) += vx;
    vy = *(int *)(a + 0x48);
    *(int *)(a + 0xc) += vy;
    vz = *(int *)(a + 0x4c);
    *(int *)(a + 0x10) += vz;

    *(int *)(a + 0x44) = vx - _divsi3_RAM(vx, 10);
    *(int *)(a + 0x48) = vy - _divsi3_RAM(vy, 3);
    *(int *)(a + 0x4c) = vz - _divsi3_RAM(vz, 10);

    *(int *)(a + 0x18) += *(int *)(a + 0x30);
    *(int *)(a + 0x1c) += *(int *)(a + 0x34);

    p = *(unsigned char **)(a + 0x50);
    *(unsigned short *)(p + 0x1e) += *(unsigned short *)(a + 0x64);
}

void OvlFunc_898_2009754(unsigned char *arg0)
{
    *(int *)(arg0 + 0x8) += *(int *)(arg0 + 0x30);
    *(int *)(arg0 + 0x38) = *(int *)(arg0 + 0x8);
    if (*(short *)(arg0 + 0x64) != 0) {
        *(int *)(arg0 + 0xc) += *(int *)(arg0 + 0x34);
        *(int *)(arg0 + 0x3c) = *(int *)(arg0 + 0xc);
    } else {
        *(int *)(arg0 + 0x10) += *(int *)(arg0 + 0x34);
        *(int *)(arg0 + 0x40) = *(int *)(arg0 + 0x10);
        *(int *)(arg0 + 0xc) += 0x80 << 3;
        *(int *)(arg0 + 0x3c) = *(int *)(arg0 + 0xc);
    }
    *(int *)(arg0 + 0x30) -= *(int *)(arg0 + 0x30) / 28;
    *(int *)(arg0 + 0x34) -= *(int *)(arg0 + 0x34) / 28;
}

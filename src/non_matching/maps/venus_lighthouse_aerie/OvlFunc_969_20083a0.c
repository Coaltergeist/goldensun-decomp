extern int _divsi3_RAM(int, int);

void OvlFunc_969_20083a0(unsigned int arg0)
{
    int num;
    int num_00;
    int sVar1;

    num = *(int *)(arg0 + 0x44);
    *(int *)(arg0 + 8) = *(int *)(arg0 + 8) + num;
    num_00 = *(int *)(arg0 + 0x4c);
    *(int *)(arg0 + 0xc) = *(int *)(arg0 + 0xc) + *(int *)(arg0 + 0x48);
    *(int *)(arg0 + 0x10) = *(int *)(arg0 + 0x10) + num_00;
    sVar1 = _divsi3_RAM(num, 0x16);
    *(int *)(arg0 + 0x44) = num - sVar1;
    sVar1 = _divsi3_RAM(num_00, 0x14);
    *(int *)(arg0 + 0x18) = *(int *)(arg0 + 0x18) + *(int *)(arg0 + 0x30);
    *(int *)(arg0 + 0x4c) = num_00 - sVar1;
    *(int *)(arg0 + 0x1c) = *(int *)(arg0 + 0x1c) + *(int *)(arg0 + 0x34);
    *(short *)(*(int *)(arg0 + 0x50) + 0x1e) =
        *(short *)(*(int *)(arg0 + 0x50) + 0x1e) + *(short *)(arg0 + 100);
}

void OvlFunc_946_2008ab0(unsigned char *object)
{
    *(int *)(object + 8) += *(int *)(object + 0x44);
    *(int *)(object + 0xc) += *(int *)(object + 0x48);
    *(int *)(object + 0x10) += *(int *)(object + 0x4c);
    *(int *)(object + 0x18) += *(int *)(object + 0x30);
    *(int *)(object + 0x1c) += *(int *)(object + 0x34);
    asm volatile("" ::: "memory");
    *(unsigned short *)(*(unsigned char **)(object + 0x50) + 0x1e) +=
        *(unsigned short *)(object + 0x64);
}

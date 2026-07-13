void OvlFunc_927_2008ab0(unsigned char *actor)
{
    *(int *)(actor + 0x08) += *(int *)(actor + 0x44);
    *(int *)(actor + 0x0c) += *(int *)(actor + 0x48);
    *(int *)(actor + 0x10) += *(int *)(actor + 0x4c);
    *(int *)(actor + 0x18) += *(int *)(actor + 0x30);
    *(int *)(actor + 0x1c) += *(int *)(actor + 0x34);
    __asm__ volatile ("" : : : "memory");
    *(unsigned short *)(*(unsigned char **)(actor + 0x50) + 0x1e) +=
        *(unsigned short *)(actor + 0x64);
}

__asm__(".align 2, 0\n"
        ".size OvlFunc_927_2008ab0, . - OvlFunc_927_2008ab0");

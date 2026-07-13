extern void __PlaySound(int sound);

void OvlFunc_932_200b724(unsigned char *actor)
{
    unsigned short *state = (unsigned short *)(actor + 0x66);
    unsigned short value = 0x21;

    *state = value;
    __PlaySound(0x120);
}

__asm__(".align 2, 0\n.size OvlFunc_932_200b724, . - OvlFunc_932_200b724");

extern unsigned char iwram_3001ebc[];
extern void _PlaySound(int sound);

void Func_8091ff0(int sound) {
    unsigned char *base = *(unsigned char **)iwram_3001ebc;

    *(unsigned short *)(base + 0xcc8) = sound;
    if ((signed short)sound == -1)
        sound = 0x121;
    _PlaySound(0x12a);
    _PlaySound(sound);
}

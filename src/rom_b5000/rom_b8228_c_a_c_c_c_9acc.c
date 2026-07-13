extern unsigned char iwram_3001e80[];
extern volatile unsigned int gKeyHeld;
extern void Func_80c0a24(int x, int y, int z, int angle, int scale);

void Func_80b9acc(void)
{
    register unsigned char *battle asm("r1") =
        *(unsigned char **)iwram_3001e80;
    register unsigned char *camera asm("r4") =
        *(unsigned char **)(iwram_3001e80 + 0x80);

    if (gKeyHeld & 0x200) {
        *(unsigned short *)(battle + 0x36) += 0x200;
    }
    if (gKeyHeld & 0x100) {
        *(unsigned short *)(battle + 0x36) -= 0x200;
    }
    if (*(int *)(camera + 0x14) == 0) {
        Func_80c0a24(0x780000, 0x780000, 0, 0, 0x10000);
    }
}

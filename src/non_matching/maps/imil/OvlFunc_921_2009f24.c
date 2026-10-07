extern short Lm921_23f0[] __asm__(".Lm921_23f0");

void OvlFunc_921_2009f24(void *actor0)
{
    unsigned char *actor = actor0;
    short cooldown = *(short *)(actor + 0x64);

    if (cooldown != 0) {
        *(unsigned short *)(actor + 0x64) = *(unsigned short *)(actor + 0x64) - 1;
        return;
    }

    actor[0x5a] = (unsigned char)cooldown;

    {
        int idx = (gKeyHeld >> 4) & 0xf;
        short tableVal = Lm921_23f0[idx];

        if (tableVal == -1) {
            __Actor_SetAnim(actor0, 9);
        } else {
            unsigned short facing = *(unsigned short *)(actor + 6);
            short diff = (short)(tableVal - facing);

            if (diff > (0x80 << 5)) {
                diff = 0x80 << 5;
            }
            if (diff < (short)0xfffff000) {
                diff = (short)0xfffff000;
            }

            *(unsigned short *)(actor + 6) = facing + diff;
            __Actor_SetAnim(actor0, 2);
            __Actor_SetAnimSpeed(actor0, 0x30);
        }
    }
}

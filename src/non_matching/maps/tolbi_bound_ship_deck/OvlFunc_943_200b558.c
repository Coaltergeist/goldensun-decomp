extern unsigned char Lm943_5b40[] __asm__(".Lm943_5b40");

void OvlFunc_943_200b558(int actor, int idx)
{
    unsigned short angle = ((unsigned short *)Lm943_5b40)[idx];

    if (angle > 0x6800 && angle < 0x7000) {
        ((unsigned short *)L5b30)[idx] += 0x70;
        API_MapActor_SetAnim(actor, 3);
    } else if (angle > 0xe800 && angle < 0xf000) {
        ((unsigned short *)L5b30)[idx] += 0xe0;
        API_MapActor_SetAnim(actor, 3);
    } else if (angle > 0x7000 && angle < 0xf000) {
        ((unsigned short *)L5b30)[idx] += 0x1c0;
        API_MapActor_SetAnim(actor, 2);
    } else {
        ((unsigned short *)L5b30)[idx] += 0x300;
        API_MapActor_SetAnim(actor, 1);
    }
}

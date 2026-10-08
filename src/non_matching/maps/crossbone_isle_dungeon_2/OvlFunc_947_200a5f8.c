void OvlFunc_947_200a5f8(int arg0)
{
    unsigned char *actor;
    unsigned char *sprite;

    actor = __MapActor_GetActor(arg0);
    actor[0x59] &= 0xfe;
    actor[0x23] |= 2;
    actor[0x55] = 0;
    __Actor_SetSpriteFlags(actor, 0);
    sprite = *(unsigned char **)(actor + 0x50);
    sprite[9] = (sprite[9] & ~0xc) | 8;
}

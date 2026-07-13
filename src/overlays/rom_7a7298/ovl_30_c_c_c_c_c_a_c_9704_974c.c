extern void __Func_80929d8(unsigned char *, int);
extern void __Actor_SetSpriteFlags(unsigned char *, int);
extern void __DeleteActor(unsigned char *actor);

void OvlFunc_921_2009704(unsigned char *actor)
{
    register unsigned char *clear_position asm("r3") = actor;
    register int zero asm("r2") = 0;
    register int flags asm("r3");
    register int old_flags asm("r2");
    register int mask asm("r3");
    register int bit asm("r2");
    unsigned char *sprite;

    asm volatile("" : "+r" (clear_position), "+r" (zero));
    clear_position += 0x55;
    *clear_position = zero;
    clear_position += 0xf;
    *(unsigned short *)clear_position = zero;
    {
        register unsigned char *flag_position asm("r1") = actor + 0x23;
        old_flags = *flag_position;
        flags = 0xfe;
        asm volatile("" : "+r" (flag_position), "+r" (old_flags), "+r" (flags));
        flags &= old_flags;
        *flag_position = flags;
    }
    sprite = *(unsigned char **)(actor + 0x50);
    old_flags = sprite[9];
    mask = 13;
    asm volatile("" : "+r" (old_flags), "+r" (mask));
    mask = -mask;
    mask &= old_flags;
    bit = 4;
    asm volatile("" : "+r" (mask), "+r" (bit));
    mask |= bit;
    sprite[9] = mask;
    __Func_80929d8(actor, 9);
    __Actor_SetSpriteFlags(actor, 0);
    *(int *)(actor + 0x18) = 0x8000;
    *(int *)(actor + 0x1c) = 0x8000;
}

void OvlFunc_921_200974c(unsigned char *actor)
{
    register unsigned char *actor_data asm("r0") = actor;
    register short *timer asm("r1") = (short *)(actor + 0x64);

    asm volatile("" : "+r" (actor_data), "+r" (timer));
    *(int *)(actor_data + 8) += *timer << 8;
    *(int *)(actor_data + 0xc) += 0x8000;
    *(int *)(actor_data + 0x18) += 0x7ae;
    *(int *)(actor_data + 0x1c) += 0x7ae;
    *timer += 2;
    (*(int *)(actor_data + 0x68))--;
    if (*(int *)(actor_data + 0x68) == 0)
        __DeleteActor(actor_data);
}

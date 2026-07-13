extern void __Func_80929d8(unsigned char *actor, int value);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);

void OvlFunc_931_2008c0c(unsigned char *actor)
{
    register unsigned char *field __asm__("r2") = actor;
    register int filtered __asm__("r3");
    register unsigned char *sprite __asm__("r1");

    __asm__ volatile ("" : "+r" (field));
    field += 0x55;
    __asm__ volatile ("" : "+r" (field));
    filtered = 0;
    __asm__ volatile ("" : "+r" (field), "+r" (filtered));
    *field = filtered;
    sprite = *(unsigned char **)(actor + 0x50);
    field = (unsigned char *)(unsigned int)sprite[9];
    __asm__ volatile ("" : "+r" (sprite), "+r" (field),
                           "+r" (filtered));
    filtered -= 0xd;
    filtered &= (unsigned int)field;
    field = (unsigned char *)4;
    __asm__ volatile ("" : "+r" (sprite), "+r" (field),
                           "+r" (filtered));
    filtered |= (unsigned int)field;
    sprite[9] = filtered;
    __Func_80929d8(actor, 3);
    __Actor_SetSpriteFlags(actor, 0);
    *(int *)(actor + 0x18) = 0x4ccc;
    *(int *)(actor + 0x1c) = 0x4ccc;
}

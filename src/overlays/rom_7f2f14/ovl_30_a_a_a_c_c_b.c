extern void __Func_80929d8(unsigned int actor, int animation);

unsigned int OvlFunc_968_2008594(unsigned int actor) {
    __Func_80929d8(actor, *(unsigned short *)(actor + 0x64) & 0xf);
    return 0;
}

/* The original function-size directive includes its two alignment bytes. */
asm(".size OvlFunc_968_2008594, 24");

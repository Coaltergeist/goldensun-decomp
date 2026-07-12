extern void __DeleteActor(void *actor);

void OvlFunc_881_200811c(unsigned char *actor)
{
    signed short *signed_counter = (signed short *)(actor + 0x64);
    unsigned short *counter = (unsigned short *)(actor + 0x64);

    if (*signed_counter <= 0) {
        *counter = *counter + 1;
    } else {
        __DeleteActor(actor);
    }
}

/* Count the original alignment halfword in the function symbol size. */
asm(".align 2, 0\n.size OvlFunc_881_200811c, . - OvlFunc_881_200811c");

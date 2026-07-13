extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_945_200b7b4(void)
{
    register unsigned int actor_id __asm__("r5") = 0x1c;
    register unsigned int mask __asm__("r6") = 8;
    register unsigned int unused __asm__("r7") = 0;

    __asm__ volatile ("" : : "r" (actor_id), "r" (mask), "r" (unused));
    do {
        register unsigned char *flags __asm__("r0") =
            __MapActor_GetActor(actor_id) + 0x59;
        register unsigned int value __asm__("r3") = *flags;

        actor_id++;
        value |= mask;
        *flags = value;
    } while (actor_id <= 0x23);
}

__asm__(".align 2, 0\n.size OvlFunc_945_200b7b4, . - OvlFunc_945_200b7b4");

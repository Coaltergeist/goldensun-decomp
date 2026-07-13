extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern int __GetFlag(int flag);
extern unsigned char *__galloc_iwram(int index, int size);
extern void __LoadItemIcon(int item);
extern void __UploadSpriteGFX(int sprite, int size, void *source);
extern void __gfree(int index);
extern void ITEM_ACTOR_UPDATE_FUNCTION(void);

void ITEM_ACTOR_SETUP_FUNCTION(int actor_id)
{
    register unsigned char *actor asm("r7");
    register unsigned char *sprite asm("r6");
    register unsigned char *buffer asm("r5");
    register int zero asm("r8");
    register int one asm("r9");
    register unsigned char *enabled asm("r10");

    actor = __MapActor_GetActor(actor_id);
    sprite = *(unsigned char **)(actor + 0x50);
    {
        register int value asm("r2") = 0xd;
        register int temporary asm("r3") = sprite[9];
        register int flags asm("r1");

        asm volatile("" : "+r"(value), "+r"(temporary));
        value = -value;
        value &= temporary;
        temporary = 4;
        asm volatile("" : "+r"(value), "+r"(temporary));
        flags = sprite[5];
        asm volatile("" : "+r"(value), "+r"(temporary), "+r"(flags));
        value |= temporary;
        temporary = 0x21;
        asm volatile("" : "+r"(value), "+r"(temporary), "+r"(flags));
        temporary = -temporary;
        temporary &= flags;
        sprite[5] = temporary;
        temporary = 0xf;
        asm volatile("" : "+r"(value), "+r"(temporary));
        value &= temporary;
        sprite[9] = value;
    }

    zero = 0;
    asm volatile("" : "+r"(zero));
    sprite[0x27] = zero;
    __Actor_SetSpriteFlags(actor, 0);
    {
        register unsigned int position asm("r3") = 0x5c;

        asm volatile("" : "+r"(position));
        position += (unsigned int)actor;
        *(unsigned char *)position = zero;
        enabled = (unsigned char *)position;
        asm volatile("" : "+r"(enabled));
        position = (unsigned int)actor;
        asm volatile("" : "+r"(position));
        position += 0x55;
        *(unsigned char *)position = zero;
    }

    if (__GetFlag(0x109) == 0)
        *(int *)(actor + 0xc) += 0x200000;

    {
        register unsigned char *position asm("r1") = actor + 0x23;
        register int old_flags asm("r2") = *position;
        register int flags asm("r3") = 0xfe;

        asm volatile("" : "+r"(position), "+r"(old_flags), "+r"(flags));
        flags &= old_flags;
        old_flags = 1;
        asm volatile("" : "+r"(position), "+r"(old_flags), "+r"(flags));
        *position = flags;
        one = old_flags;
    }
    {
        register unsigned char *position asm("r3") = actor;
        register int value asm("r2");

        asm volatile("" : "+r"(position));
        asm volatile("" : "=r"(value));
        value = one;
        asm volatile("" : "+r"(position), "+r"(value));
        position += 0x61;
        *position = value;
    }

    buffer = __galloc_iwram(0x11, 0xc1 << 3);
    __LoadItemIcon(0xb5);
    buffer += 0x80 << 3;
    asm volatile("" : "+r"(buffer));
    {
        register int sprite_id asm("r0");
        register int size asm("r1");
        register void *source asm("r2");

        source = buffer;
        asm volatile("" : "+r"(source));
        size = 0x80;
        asm volatile("" : "+r"(size), "+r"(source));
        sprite_id = sprite[0x1c];
        asm volatile("" : "+r"(sprite_id), "+r"(size), "+r"(source));
        __UploadSpriteGFX(sprite_id, size, source);
    }
    __gfree(0x11);

    *(int *)(actor + 0x38) = *(int *)(actor + 8);
    *(int *)(actor + 0x30) = zero;
    *(int *)(actor + 0x3c) = *(int *)(actor + 0xc);
    {
        register unsigned char *position asm("r2") = enabled;
        register int value asm("r3") = one;

        asm volatile("" : "+r"(position), "+r"(value));
        *position = value;
    }
    *(void (**)(void))(actor + 0x6c) = ITEM_ACTOR_UPDATE_FUNCTION;
    actor[0x56] = zero;
}

typedef struct ActorData {
    unsigned char padding[9];
    unsigned char flags;
} ActorData;

typedef struct MapActor {
    unsigned char padding[0x50];
    ActorData *data;
} MapActor;

void OvlFunc_965_20089dc(MapActor *actor, int value)
{
    register ActorData *data asm("r0") = actor->data;
    register int mask asm("r3") = 3;
    register int flags asm("r2");
    register int encoded_value asm("r1") = value;

    /* Preserve the original register allocation and instruction order. */
    asm volatile("" : "+r"(data));
    asm volatile("" : "+r"(data), "+r"(mask));
    flags = data->flags;
    asm volatile("" : "+r"(data), "+r"(mask), "+r"(flags));
    encoded_value &= mask;
    mask = 0xd;
    asm volatile("" : "+r"(mask), "+r"(encoded_value));
    mask = -mask;
    encoded_value <<= 2;
    asm volatile("" : "+r"(mask), "+r"(encoded_value));
    mask &= flags;
    mask |= encoded_value;
    asm volatile("" : "+r"(data), "+r"(mask));
    data->flags = mask;
}

/* Include the original trailing alignment in the function symbol size. */
asm(".size OvlFunc_965_20089dc, 24");

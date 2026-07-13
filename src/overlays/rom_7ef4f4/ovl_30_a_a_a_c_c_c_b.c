typedef struct ActorData {
    unsigned char padding[0x1e];
    unsigned short angle;
} ActorData;

typedef struct Actor {
    unsigned char padding[8];
    int x;
    int y;
    int z;
    unsigned char padding_14[4];
    int screen_x;
    int screen_y;
    unsigned char padding_20[0x10];
    int screen_dx;
    int screen_dy;
    unsigned char padding_38[0xc];
    int dx;
    int dy;
    int dz;
    ActorData *data;
    unsigned char padding_54[0x10];
    unsigned short angle_delta;
} Actor;

void OvlFunc_965_2008ab0(Actor *actor)
{
    actor->x += actor->dx;
    actor->y += actor->dy;
    actor->z += actor->dz;
    actor->screen_x += actor->screen_dx;
    actor->screen_y += actor->screen_dy;
    /* Finish the screen update before loading the nested actor data. */
    asm volatile("" ::: "memory");
    actor->data->angle += actor->angle_delta;
}

/* The original Thumb symbol includes its two-byte alignment padding. */
asm(".size OvlFunc_965_2008ab0, 56");

typedef unsigned char u8;

struct Sprite {
    u8 pad[9];
    unsigned char low : 2;
    unsigned char field : 2;
};

struct Actor {
    u8 pad[0x50];
    struct Sprite *sprite;
};

void OvlFunc_common0_0(struct Actor *actor, unsigned int value)
{
    actor->sprite->field = value;
}

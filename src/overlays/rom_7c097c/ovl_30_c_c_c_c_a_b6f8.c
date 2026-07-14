typedef unsigned char u8;
typedef signed short s16;

extern void __DeleteActor(void *actor);

void OvlFunc_936_200b6f8(u8 *actor)
{
    s16 *timer = (s16 *)(actor + 100);
    int position_x;
    int velocity_x;
    int velocity_y;

    if (*timer == 0) {
        __DeleteActor(actor);
    } else if (*timer == 1) {
        *(int *)(actor + 0x24) = 0;
        *(int *)(actor + 0x28) = 0;
        *(int *)(actor + 8) = 0;
        *(int *)(actor + 0xc) = 0;
    } else {
        *(int *)(actor + 0x18) += 0x800;
        *(int *)(actor + 0x1c) += 0x800;
    }

    position_x = *(int *)(actor + 8);
    asm volatile("" : "+r"(position_x));
    velocity_x = *(int *)(actor + 0x24);
    *(int *)(actor + 8) = position_x + velocity_x;
    velocity_y = *(int *)(actor + 0x28);
    *(int *)(actor + 0xc) += velocity_y;
    *(int *)(actor + 0x24) = velocity_x - velocity_x / 0x100;
    *(int *)(actor + 0x28) = velocity_y - velocity_y / 0x10;
    --*timer;
}

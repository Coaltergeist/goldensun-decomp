typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int actor_id);
extern int __cos(int angle);
extern int __sin(int angle);

void OvlFunc_969_200b660(u8 *actor)
{
    u8 *reference = __MapActor_GetActor(23);
    u16 *angle_pointer = (u16 *)(actor + 100);
    u16 angle = *angle_pointer;
    u8 *scale;
    int cosine = __cos(angle);
    int x;
    int z;

    scale = actor + 0x62;
    *(int *)(actor + 8) = *(int *)(reference + 8)
      + cosine * (*(int *)(actor + 0x30) + *scale + 6);

    z = *(int *)(reference + 16) + __sin(angle) * (*scale + 4);
    x = *(int *)(actor + 8);
    *(int *)(actor + 16) = z;
    *(int *)(actor + 0x38) = x;
    *(int *)(actor + 0x40) = z;
    *angle_pointer -= 0x800;
}

typedef signed short s16;
typedef unsigned short u16;

typedef struct Vec3 {
    int x;
    int y;
    int z;
} Vec3;

extern volatile const Vec3 gBase asm(".L31f0");
extern void __vec3_translate(int x, int y, Vec3 *vec);
extern void __DeleteActor(void *actor);

void OvlFunc_921_200954c(unsigned char *argument)
{
    Vec3 position;
    register unsigned char *actor asm("r6") = argument;
    register Vec3 *dest asm("r5");
    register u16 *life_ptr asm("r2");
    s16 life;
    int value;

    if (actor != 0) {
        life_ptr = (u16 *)(actor + 0x64);
        value = *life_ptr;
        value--;
        *life_ptr = value;
        life = (s16)value;
        if (life != 0) {
            register volatile const Vec3 *source asm("r2") = &gBase;
            register int temp asm("r3");
            register int addend asm("r0");
            temp = source->x;
            dest = &position;
            dest->x = temp;
            addend = 0x80;
            temp = source->y;
            addend <<= 12;
            temp += addend;
            dest->y = temp;
            temp = source->z;
            dest->z = temp;
            __vec3_translate(life << 16,
                             life * 0x800 + *(s16 *)(actor + 0x66),
                             dest);
            *(int *)(actor + 8) = dest->x;
            *(int *)(actor + 0xc) = dest->y;
            *(int *)(actor + 0x10) = dest->z;
        } else {
            __DeleteActor(actor);
        }
    }
}

typedef signed short s16;
typedef unsigned short u16;

typedef struct Vec3 {
    int x;
    int y;
    int z;
} Vec3;

typedef struct MapActor {
    unsigned char pad0[8];
    int x;
    int y;
    int z;
} MapActor;

typedef struct EffectActor {
    unsigned char pad0[8];
    int x;
    int y;
    int z;
    unsigned char pad14[0x50];
    u16 timer;
    s16 angle;
} EffectActor;

extern unsigned char gState[];
extern MapActor *MapActor_GetActor(void *map);
extern void vec3_translate(int distance, int angle, Vec3 *position);
extern void _DeleteActor(EffectActor *actor);

void Func_8095fcc(EffectActor *actor)
{
    register void *map asm("r0");
    register EffectActor *effect asm("r7");
    register Vec3 *position asm("r5");
    register unsigned char *state asm("r3") = gState;
    register int height asm("r1");
    register int initialX asm("r3");
    register MapActor *mapActor asm("r6");

    asm volatile("mov r1, #0xfa\n\tlsl r1, #1\n\tadd r3, r1\n\tmov r7, r0\n\tldr r0, [r3]\n\tsub sp, #0xc"
                 : "+r" (state));
    asm volatile("" : "=r" (map), "=r" (effect));
    MapActor_GetActor(map);
    asm volatile("mov r3, r7\n\tadd r3, #0x64\n\tldrh r1, [r3]\n\tsub r1, #1\n\tstrh r1, [r3]\n\tmov r6, r0"
                 : "=r" (height), "=r" (mapActor) : "r" (effect) : "r3");
    asm volatile("ldr r3, [r6, #8]\n\tmov r5, sp"
                 : "=r" (initialX), "=r" (position) : "r" (mapActor));
    position->x = initialX;
    position->z = mapActor->z;
    height = (s16)height;
    vec3_translate(height * 0x6666, (height << 11) + effect->angle,
                   position);
    effect->x = position->x;
    effect->z = position->z;
    effect->y -= 0x10000;
    if (effect->y < mapActor->y + 0x140000)
        _DeleteActor(effect);
    asm volatile("add sp, #0xc");
}

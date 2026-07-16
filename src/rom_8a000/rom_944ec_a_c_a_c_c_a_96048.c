typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u32;

typedef struct {
    int x;
    int y;
    int z;
} Vec3;

typedef struct {
    u8 pad[500];
    int actorId;
} GameState;

extern GameState gState;
extern u32 iwram_3001800;
extern u8 *MapActor_GetActor(int);
extern int Random(void);
extern void vec3_translate(int, int, Vec3 *);
extern void Func_80974d8(Vec3 *);
extern void _PlaySound(int);
extern int Func_809ba34(u8 *);
extern void Func_809bb34(u8 *);

void Func_8096048(u8 *effect)
{
    u8 *actor = MapActor_GetActor(gState.actorId);
    s8 *state = (s8 *)(effect + 0x40);
    int phase = *state;

    if (phase == 0) {
        Vec3 position;
        int speed;

        position.x = *(int *)(actor + 8);
        position.y = *(int *)(actor + 0xc);
        position.z = *(int *)(actor + 0x10);
        speed = Random() * 10 + 0xa0000;
        vec3_translate(speed, Random(), &position);
        Func_80974d8(&position);
        *(int *)(effect + 0x14) = position.x;
        *(int *)(effect + 0x18) = position.z;
        *(int *)(effect + 4) = position.x;
        *(int *)(effect + 8) = position.z;
        position.x = *(int *)(effect + 4);
        position.z = *(int *)(effect + 8);
        vec3_translate(0x780000, 0xc000, &position);
        *(int *)(effect + 0xc) = position.x;
        *(int *)(effect + 0x10) = position.z;
        *(int *)(effect + 0x24) = 0x10000;
        *(int *)(effect + 0x20) = 0x50000;
        effect[0x42] = phase;
        (*state)++;
        if (iwram_3001800 & 1)
            _PlaySound(0x90);
    } else if (phase == 1) {
        if (Func_809ba34(effect) == 0)
            (*state)--;
    } else if (phase == 2) {
        if (Func_809ba34(effect) == 0)
            Func_809bb34(effect);
    }
}

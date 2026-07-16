typedef unsigned char u8;
typedef unsigned int u32;

typedef struct {
    int x;
    int y;
    int z;
} Vec3;

extern u8 *iwram_3001f30;
extern u32 iwram_3001e40;
extern void Func_80974d8(Vec3 *);
extern u32 Random(void);
extern void vec3_translate(int, int, Vec3 *);
extern int Func_809ba34(void *);
extern void Func_809bb34(void *);
extern void _PlaySound(int);

void Func_809b11c(void *object)
{
    u8 *actor = object;
    u8 *source = *(u8 **)(iwram_3001f30 + 0x10);
    signed char *state_ptr = (signed char *)(actor + 0x40);
    signed char state = *state_ptr;

    if (state == 0) {
        Vec3 position;
        u32 first;
        u32 second;
        int angle;

        position.x = *(int *)(source + 8);
        position.y = *(int *)(source + 0xc);
        position.z = *(int *)(source + 0x10);
        Func_80974d8(&position);

        *(int *)(actor + 4) = position.x;
        *(int *)(actor + 8) = position.z + 0x80000;
        *(int *)(actor + 0x18) = *(int *)(actor + 8);
        *(int *)(actor + 0x14) = *(int *)(actor + 4);
        position.z = *(int *)(actor + 8);
        position.x = *(int *)(actor + 4);

        first = Random();
        second = Random();
        angle = (first << 13 >> 16) - (second << 13 >> 16) + 0xc000;
        vec3_translate(0x780000, angle, &position);

        *(int *)(actor + 0xc) = position.x;
        *(int *)(actor + 0x10) = position.z;
        *(int *)(actor + 0x24) = 0x50000;
        *(int *)(actor + 0x20) = 0x50000;
        actor[0x42] = 0;
        (*state_ptr)++;
        if (iwram_3001e40 & 2)
            _PlaySound(0xf6);
    } else if (state == 1) {
        if (Func_809ba34(actor) == 0)
            (*state_ptr)--;
    } else if (state == 2) {
        if (Func_809ba34(actor) == 0)
            Func_809bb34(actor);
    }
}

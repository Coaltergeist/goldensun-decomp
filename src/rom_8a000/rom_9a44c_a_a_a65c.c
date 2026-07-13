typedef signed short s16;

typedef struct {
    char _pad00[0x1e];
    s16 angle;
} SpriteA65c;

typedef struct {
    char _pad00[0x08];
    int x;
    int y;
    int z;
    char _pad14[0x04];
    int screen_x;
    int screen_y;
    char _pad20[0x10];
    int screen_velocity_x;
    int screen_velocity_y;
    char _pad38[0x0c];
    int velocity_x;
    int velocity_y;
    int velocity_z;
    SpriteA65c *sprite;
    char _pad54[0x10];
    s16 angle_velocity;
} ParticleA65c;

extern int __divsi3(int numerator, int denominator);

void Func_809a65c(ParticleA65c *particle)
{
    int velocity_x = particle->velocity_x;
    int velocity_z;

    asm volatile("" : "+r"(velocity_x) : : "memory");
    particle->x += velocity_x;
    particle->y += particle->velocity_y;
    asm volatile("" : : : "memory");
    velocity_z = particle->velocity_z;
    particle->z += velocity_z;
    particle->velocity_x = velocity_x - __divsi3(velocity_x, 0x12);
    particle->velocity_z = velocity_z - velocity_z / 16;
    particle->screen_x += particle->screen_velocity_x;
    particle->screen_y += particle->screen_velocity_y;
    particle->sprite->angle += particle->angle_velocity;
}

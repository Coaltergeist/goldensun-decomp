typedef signed short s16;

typedef struct {
    char _pad00[0x1e];
    s16 angle;
} OvlSprite;

typedef struct {
    char _pad00[0x08];
    int x;
    int y;
    int z;
    char _pad14[0x04];
    int screenX;
    int screenY;
    char _pad20[0x10];
    int screenVelocityX;
    int screenVelocityY;
    char _pad38[0x0c];
    int velocityX;
    int velocityY;
    int velocityZ;
    OvlSprite *sprite;
    char _pad54[0x10];
    s16 angleVelocity;
} OvlParticle;

extern int _divsi3_RAM(int numerator, int denominator);

void OvlFunc_946_2008da4(OvlParticle *particle)
{
    int velocityX = particle->velocityX;
    int velocityZ;

    asm volatile("" : "+r"(velocityX) : : "memory");
    particle->x += velocityX;
    particle->y += particle->velocityY;
    asm volatile("" : : : "memory");
    velocityZ = particle->velocityZ;
    particle->z += velocityZ;
    particle->velocityX = velocityX - _divsi3_RAM(velocityX, 0x12);
    particle->velocityZ = velocityZ - velocityZ / 16;
    particle->screenX += particle->screenVelocityX;
    particle->screenY += particle->screenVelocityY;
    particle->sprite->angle += particle->angleVelocity;
}
